/* Petros S <petross404@gmail.com>
 *
 * For more information about the license
 * take a look at ../License/GPL-3.txt
 *
 */
#include <Windows.h>
#include "qtdice.h"
#include "About/about.h"
#include "Settings/configure.h"

Q_LOGGING_CATEGORY( LOG_QTDICE, "QtDice" )

QtDice::QtDice( int number )
	: diceNumber( number ),
	  btnRoll( new QPushButton( tr( "&Roll the dice" ), this ) ),
	  btnQuit( new QPushButton( tr( "&Quit" ), this ) ),
	  widgetCentral( new QWidget( this ) ),
	  gridLayout( new QGridLayout ),
	  gridLabel( new QGridLayout ),
	  gridStatus( new QGridLayout ),
	  gridWarning( new QGridLayout ),
	  image( new QPixmap( ":/resources/images/dice.png" ) ),
	  label( new QLabel( this ) ),
	  labelStatus( new QLabel( tr( "Haven't rolled yet" ), this ) ),
	  labelWarning( new QLabel( this ) ),
	  actionRoll( new QAction( tr( "&Roll the dice" ), this ) ),
	  actionQuit( new QAction( tr( "&Quit" ), this ) ),
	  actionConfigure( new QAction( tr( "&Configure" ), this ) ),
	  actionAboutQt( new QAction( tr( "&About Qt" ), this ) ),
	  actionAbout( new QAction( tr( "&About QtDice" ), this ) ),
	  settings( new QSettings( "QtDice" ) ),
	  qtdiceIcon( new QIcon( ":/resources/images/dice.ico" ) ),
	  exitIcon( new QIcon( ":/resources/images/exit.ico" ) ),
	  movie( new QMovie( this ) ),
	  spinBox( new QSpinBox( this ) )
{
	qDebug() << QString( "The number given from argv is %1" ).arg( &diceNumber );
	createMenus();

	setWindowTitle( "QtDice" );
	setWindowIcon( QIcon::fromTheme( "roll", *qtdiceIcon ) );

	setupLayouts();
	setupWidgets();

	//Connect spinBox to reload function and the label_warning
	QObject::connect( spinBox.data(), QOverload<int>::of( &QSpinBox::valueChanged ), this,
	                  static_cast<void ( QtDice::* )( int ) > ( &QtDice::reload ) );

	QObject::connect( spinBox.data(), &QSpinBox::editingFinished, this, &QtDice::printWarning );
	QObject::connect( this, &QtDice::isReloadedWithoutSpinbox, labelWarning.data(), &QLabel::clear );

	//Connect buttons to functions
	QObject::connect( btnRoll.data(), &QPushButton::clicked, this,
	                  static_cast<void ( QtDice::* )( void )> ( &QtDice::reload ) );
	QObject::connect( btnQuit.data(), &QPushButton::clicked, this, &QApplication::quit );

	setCentralWidget( widgetCentral.data() );
	centralWidget()->setLayout( gridLayout.data() );
	setMinimumSize( 520, 580 );

	// GUI is all set, handle the argv that is passed to the QtDice ctor
	if ( ( diceNumber > 1 ) && ( diceNumber < 6 ) )
	{
		reload( diceNumber );
	}
	else if ( diceNumber != 0 )
	{
		std::cerr << "Exit, that's an inappropriate number\n";
		reload( 4 );
	}
}

void QtDice::QtDiceConfiguration()
{
	Configure *confWindow = new Configure( this );
	confWindow->show();
}

void QtDice::aboutQtDice()
{
	About *aboutWindow = new About( this );
	aboutWindow->show();
}

//Before showing the image, it plays a small animation of
//a rolling dice for enhanced user experience
void QtDice::animateDice()
{
#ifdef ENABLE_SOUND

	// Decide if the sound will be played...
	if ( isSoundEnabled() )
	{
		roll_sound.play();
		qDebug() << "Play sound";
	}

#endif                                                      // ENABLE_SOUND

	// When animation starts, disable spinBox, the buttons etc...
	QObject::connect( movie.data(), &QMovie::started, this, &QtDice::disableWidgets );

	//Thanks to the guys at this thread :
	//https://forum.qt.io/topic/88197/custom-signal-to-slot-the-slot-requires-more-arguments-than-the-signal-provides
	QObject::connect( movie.data(), &QMovie::frameChanged, this, std::bind( &QtDice::qmovieFrameChanged, this, movie.data() ) );
	QObject::connect( this, &QtDice::qmovieFrameChanged, this, &QtDice::stopLastQMovieFrame );

	// When movie is finished, re-enable spinBox, buttons etc
	QObject::connect( movie.data(), &QMovie::finished, this, &QtDice::enableWidgets );

	//Make sure we don't constantly re-append a fileName!
	if ( movie->fileName() == "" )
	{
		movie->setFileName( ":resources/images/bluedice.gif" );
	}

	label->setMovie( movie.data() );

	//Just to make sure that movie has a valid type or exit
	if ( movie->isValid() )
	{
		movie->start();
	}
	else
	{
		QString anim_error {"Animation type is not supported!"};
		label->setText( tr( anim_error.toLocal8Bit().constData() ) );
		QMessageBox::critical( this, tr( "Error" ), tr( anim_error.toLocal8Bit().constData() ) );
	}
}

void QtDice::disableWidgets()
{
	//Now that movie is started, set the following...
	btnRoll->setFocus();
	actionRoll->setEnabled( false );
	btnRoll->setEnabled( false );

	//...also set the QLabel that show the status
	labelStatus->setText( tr( "Rolling..." ) );
	spinBox->setEnabled( false );
}

void QtDice::enableWidgets()
{
	label->setPixmap( *image.data() );
	label->show();
	btnRoll->setEnabled( true );
	btnRoll->setFocus();
	actionRoll->setEnabled( true );
}

// This function declares image_update(int image_number)
// This function accepts an image_number which is already have been
// generated randomly in Dice class members. Based on image_number it
// selects the proper dice image to show
void QtDice::imageUpdate( int image_number )
{
	//Now deal with which image will be loaded based on image_number
	//The whole point of this program is here
	QString image_name {":/resources/images/dice-%1.png"};

	if ( ( image_number < 0 ) || ( image_number > 6 ) )
	{
		qDebug() << "Oops! Very wrong number...";
		QString msg_error = "A dice doesn't have this number : " + ( QString( "%1" ).arg( image_number ) );
		QMessageBox::critical( this, tr( "QtDice" ),
		                       tr( msg_error.toLocal8Bit().constData() ) );
	}
	else
	{
		image->load( image_name.arg( image_number ) );
	}

	QObject::connect( movie.data(), &QMovie::frameChanged, this,
	                  [ = ]()
	{
		if ( movie->state() == QMovie::NotRunning )
		{
			spinBox->blockSignals( true );
			spinBox->setValue( image_number );
			spinBox->blockSignals( false );
		}
	} );
}

bool QtDice::isSoundEnabled()
{
	settings->beginGroup( tr( "/sound" ) );
	settings->sync();

	if ( settings->value( "rolling_sound" ).toBool() )
	{
		settings->endGroup();
		return true;
	}
	else
	{
		settings->endGroup();
		return false;
	}
}

void QtDice::keyPressEvent( QKeyEvent *e )
{
	if ( e->key() == Qt::Key_Escape )
	{
		QApplication::quit();
	}
}

// This is the random reload function. After the animation is over, a dice
// is rolled. Look at Dice/dice.cpp for more details.
void QtDice::reload()
{
	animateDice();

	//If Dice object doesn't exist (=first run), initialize one
	if ( pDice == Q_NULLPTR )
	{
		pDice.reset( new Dice );
	}

	pDice->roll();
	imageUpdate( pDice->getNumber() );

	// Inform the program that no spinBox action took place
	emit isReloadedWithoutSpinbox();
}

// This is a reload function. After the animation is over,
// a dice is given a "hardcoded" value. Look at Dice/dice.cpp for more details.
void QtDice::reload( int number )
{
	animateDice();

	//If Dice object doesn't exist (=first run), initialize one
	if ( pDice == Q_NULLPTR )
	{
		pDice.reset( new Dice( number ) );
	}
	else
	{
		pDice->setNumber( number );
	}

	imageUpdate( pDice->getNumber() );
// Actually this function doesn't even need one Dice.
// It uses a known int value, it doesn't have to use Dice::get_number to get one.
}

void QtDice::resetQtDice()
{
	numberOfRolls = 0;
	setupWidgets();
	label->setPixmap( QPixmap( ":/resources/images/128-apps-dice.png" ) );
	pDice.reset();
}

void QtDice::createMenus()
{
	menuFile.reset( menuBar()->addMenu( tr( "&File" ) ) );
	menuEdit.reset( menuBar()->addMenu( tr( "&Edit" ) ) );
	menuAbout.reset( menuBar()->addMenu( tr( "&About" ) ) );

	menuFile->addAction( actionRoll.data() );
	actionRoll->setIcon( *qtdiceIcon.data() );
	QObject::connect( actionRoll.data(), &QAction::triggered, this,
	                  static_cast<void ( QtDice::* )( void ) > ( &QtDice::reload ) );

	menuFile->addSeparator();

	menuFile->addAction( actionQuit.data() );
	actionQuit->setIcon( *exitIcon.data() );
	QObject::connect( actionQuit.data(), &QAction::triggered, this, QApplication::quit );

	menuEdit->addAction( actionConfigure.data() );
	QObject::connect( actionConfigure.data(), &QAction::triggered, this, &QtDice::QtDiceConfiguration );
	actionConfigure->setIcon( QIcon::fromTheme( "settings-configure" ) );

	menuAbout->addAction( actionAbout.data() );
	actionAbout->setIcon( QIcon::fromTheme( "help-about", QIcon( ":/resources/images/dice.ico" ) ) );
	QObject::connect( actionAbout.data(), &QAction::triggered, this, &QtDice::aboutQtDice );

	menuAbout->addAction( actionAboutQt.data() );
	actionAboutQt->setIcon( QIcon( ":/resources/images/Qt_logo_2016.svg.ico" ) );
	QObject::connect( actionAboutQt.data(), &QAction::triggered, this, &QApplication::aboutQt );

}

void QtDice::printWarning()
{
	labelWarning->setText( tr( "Did you cheat?" ) );
}

void QtDice::setupLayouts()
{
	gridLayout->addLayout( gridLabel.data(), 0, 0 );
	gridLayout->addLayout( gridStatus.data(), 1, 0 );
	gridLayout->addLayout( gridWarning.data(), 2, 0 );

	gridLabel->addWidget( label.data(), 0, 0 );

	gridStatus->addWidget( labelStatus.data(), 0, 0 );
	gridStatus->addWidget( spinBox.data(), 0, 1 );
	gridStatus->addWidget( btnRoll.data(), 0, 2 );

	gridWarning->addWidget( labelWarning.data(), 0, 0 );
	gridWarning->addWidget( btnQuit.data(), 0, 1 );
}

void QtDice::setupWidgets()
{
	btnRoll->setIcon( QIcon::fromTheme( "roll", *qtdiceIcon.data() ) );
	btnQuit->setIcon( QIcon::fromTheme( "application-exit", *exitIcon.data() ) );

	spinBox->setRange( 1, 6 );

	label->setPixmap( *image.data() );
	label->setBackgroundRole( QPalette::Base );
	label->setSizePolicy( QSizePolicy::Ignored, QSizePolicy::Ignored );
	label->setScaledContents( true );
	label->setFrameStyle( QFrame::StyledPanel | QFrame::Raised );
	label->setLineWidth( 2 );
}

// Check if the frame is the last one and stop the dice animation
void QtDice::stopLastQMovieFrame( QMovie *movie )
{
	if ( movie->currentFrameNumber() == ( movie->frameCount() - 1 ) )
	{
		movie->stop();

		//Explicity emit finished signal
		//https://bugreports.qt.io/browse/QTBUG-66733
		if ( movie->state() == QMovie::NotRunning )
		{
			emit movie->finished();
			labelStatus->setText( tr( "Ready" ) );
			spinBox->setEnabled( true );
		}
	}
}
// kate: indent-mode cstyle; indent-width 8; replace-tabs off; tab-width 8; 
