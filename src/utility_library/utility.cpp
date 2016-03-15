#include "utility.h"
#include <QDebug>

void Utility::doFancyStuff()
{
    static int counter = 0;
    qDebug() << "Fancy Stuff!";
    setMyProperty(tr("Some fancy string (%1)").arg(counter++));
}
