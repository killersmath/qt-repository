#include "message.h"
#include <qDebug>

Message::Message()
{
    m_value = 0;
}

int Message::value()
{
    return m_value;
}

void Message::setValue(int value)
{
    if(m_value != value){
        m_value = value;
        emit valueChanged(m_value);
    }
}

QString Message::message() const
{
    return m_message;
}

void Message::setMessage(const QString &message)
{
    if(message != m_message){
        m_message = message;
        emit messageChanged(m_message);
    }
}

void Message::receiveMessage(const QString &message, int value)
{
    setMessage(message);
    setValue(value);
}
