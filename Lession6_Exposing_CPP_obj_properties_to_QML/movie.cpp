#include "movie.h"

Movie::Movie(QObject *parent) : QObject(parent),
    m_title("Movie Title"),
    m_mainCharacter("Main Character")
{

}

QString Movie::mainCharacter() const
{
    qDebug() << "get m_mainCharacter";
    return m_mainCharacter;
}

QString Movie::title() const
{
    qDebug() << "get m_title";
    return m_title;
}

void Movie::setMainCharacter(QString mainCharacter)
{
    if (m_mainCharacter == mainCharacter)
        return;

    m_mainCharacter = mainCharacter;
    emit mainCharacterChanged(m_mainCharacter);
}

void Movie::setTitle(QString title)
{
    if (m_title == title)
        return;

    m_title = title;
    emit titleChanged(m_title);
}
