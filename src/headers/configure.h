#ifndef CONFIGURE_H
#define CONFIGURE_H

#include <QApplication>
#include <QDialog>
#include <QScopedPointer>
#include <QSharedPointer>
#include <QWidget>
#include <QGridLayout>
#include <QDialogButtonBox>
#include <QGroupBox>
#include <QDebug>
#include <QPixmap>
#include <QLabel>
#include <QtGlobal>
#include <QButtonGroup>
#include <QSettings>
#include <QCheckBox>

class Configure : public QDialog
{
	Q_OBJECT

public:
	explicit Configure( QWidget *parent );
	~Configure();

public slots:
	void show();

private slots:
	void writeSettings();

private:
	QScopedPointer<QDialogButtonBox> buttonBox;
	QScopedPointer<QLabel> labelIcon;
	QScopedPointer<QGroupBox> gridGroupBox;
	QScopedPointer<QGroupBox> gridGroupBox_Icon;
	QScopedPointer<QGridLayout> gridLayout;
	QScopedPointer<QGridLayout> grid_GeneralSettings;
	QScopedPointer<QGridLayout> gridButtons;
	QScopedPointer<QGridLayout> gridLabel;
	QScopedPointer<QPixmap> pixmapSettings;
	QScopedPointer<QSettings> settings;
	QScopedPointer<QCheckBox> soundCheckBox;
	QGroupBox *createGroupBox_General();
	QGroupBox *createGroupBox_Icon();
<<<<<<< HEAD
	void readSettings();
};

#endif // CONFIGURE_H
// kate: indent-mode cstyle; indent-width 8; replace-tabs off; tab-width 8; 
=======

	void readSettings();
};

#endif // CONFIGURE_H
>>>>>>> 41c7c5f3be74d0f284ee8e39dc7638099e23c833
