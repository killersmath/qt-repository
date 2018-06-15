TEMPLATE = app # what type of project is it.

QT += qml quick  widgets # what modules are necessary in this project

SOURCES += main.cpp \ # need to compile any cpp files
    message.cpp \
    mainwindow.cpp

RESOURCES += qml.qrc # "index file"

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    message.h \
    mainwindow.h

