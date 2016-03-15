#include "utility.h"

#include <QQmlApplicationEngine>
#include <QQmlContext>

#include <QGuiApplication>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // Create an instance of the library class Utility
    Utility *utilityInstance = new Utility;

    QQmlApplicationEngine engine;
    // Make the class instance known to the qml engin under the name Utility
    engine.rootContext()->setContextProperty("Utility", utilityInstance);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
