#include <QApplication>
#include "testqmlwidget.h"

int main(int argc, char *argv[])
{
	QApplication a(argc, argv);
	TestQMLWidget w;
	w.show();
	
	return a.exec();
}
