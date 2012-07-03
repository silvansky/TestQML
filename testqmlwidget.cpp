#include "testqmlwidget.h"
#include "ui_testqmlwidget.h"

TestQMLWidget::TestQMLWidget(QWidget *parent) :
	QWidget(parent),
	ui(new Ui::TestQMLWidget)
{
	ui->setupUi(this);
	ui->declarativeView->setSource(QUrl("qrc:/main.qml"));
}

TestQMLWidget::~TestQMLWidget()
{
	delete ui;
}
