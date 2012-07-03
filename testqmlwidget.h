#ifndef TESTQMLWIDGET_H
#define TESTQMLWIDGET_H

#include <QWidget>

namespace Ui {
class TestQMLWidget;
}

class TestQMLWidget : public QWidget
{
	Q_OBJECT
	
public:
	explicit TestQMLWidget(QWidget *parent = 0);
	~TestQMLWidget();
	
private:
	Ui::TestQMLWidget *ui;
};

#endif // TESTQMLWIDGET_H
