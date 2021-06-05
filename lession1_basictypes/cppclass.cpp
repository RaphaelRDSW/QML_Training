#include "cppclass.h"
#include <QDebug>

CppClass::CppClass(QObject *parent) : QObject(parent)
{

}

void CppClass::cppSlot()
{
    qDebug() << "Raphael UI -----> Cpp-Slot called from UI";
    qDebug() << " Emiting CPP -----> UI";
    emit sendInt(124);
    emit sendDouble(3.14);

}


