#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>

class Message : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int value READ value WRITE setValue NOTIFY valueChanged)
    Q_PROPERTY(QString message READ message WRITE setMessage NOTIFY messageChanged)

signals:
    void valueChanged(int value);
    void messageChanged(const QString &message);

public:
    Message();

    int value();
    void setValue(int value);
    QString message() const;
    void setMessage(const QString &message);

public slots:
    void receiveMessage(const QString &message, int value);

private:
    int m_value;
    QString m_message;
};

#endif // MESSAGE_H
