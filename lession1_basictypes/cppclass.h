#ifndef CPPCLASS_H
#define CPPCLASS_H

#include <QObject>

class CppClass : public QObject
{
    Q_OBJECT
public:
    explicit CppClass(QObject *parent = nullptr);

signals:
   void sendInt(int param);
    void sendDouble(double param);
public slots:
   void cppSlot();
};

#endif // CPPCLASS_H
