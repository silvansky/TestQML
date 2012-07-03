QT       += core gui declarative

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = TestQML
TEMPLATE = app

SOURCES += \
	main.cpp\
        testqmlwidget.cpp

HEADERS  += \
	testqmlwidget.h

FORMS    += \
	testqmlwidget.ui

OTHER_FILES += \
    main.qml \
    IconItem.qml \
    WidgetModel.qml

RESOURCES += \
    resources.qrc
