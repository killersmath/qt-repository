#include <QApplication>

#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QQmlContext>

#include "mainwindow.h"
#include "message.h"

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);

    MainWindow w;
    Message hMessage;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("hMessage", &hMessage);

    QQmlComponent component(&engine, QUrl("qrc:/main.qml"));
    QObject *object = component.create();

    QObject::connect(&w, &MainWindow::quit, object, &QObject::deleteLater);
    QObject::connect(&w, &MainWindow::sendMessage, &hMessage, &Message::receiveMessage);

    w.show();

    return app.exec();
}
