#ifndef UTILITY_H
#define UTILITY_H_H

#include "utility_global.h"

#include <QObject>

class UTILITY_EXPORT Utility: public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString myProperty READ myProperty WRITE setMyProperty NOTIFY myPropertyChanged)

public:
    explicit Utility(QObject *parent = 0) : QObject(parent) {}

    Q_INVOKABLE void doFancyStuff();
    QString myProperty() const;

private:
    QString _myProperty;

public slots:
    void setMyProperty(QString myProperty);

signals:
    void myPropertyChanged(QString myProperty);
};

inline QString Utility::myProperty() const
{
    return _myProperty;
}

inline void Utility::setMyProperty(QString myProperty)
{
    if (_myProperty == myProperty)
        return;

    _myProperty = myProperty;
    emit myPropertyChanged(myProperty);
}

#endif
