#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QFormLayout>
#include <QHBoxLayout>

#include <QPushButton>
#include <QLabel>
#include <QTextEdit>
#include <QSpinBox>

class MainWindow : public QMainWindow
{
    Q_OBJECT
public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
signals:
    void quit();
    void sendMessage(const QString &message, int number);
public slots:
private:
    QVBoxLayout mainLayout;
    QFormLayout formLayout;
    QHBoxLayout buttonLayout;
    QPushButton sendButton;
    QLabel messageLabel, numberLabel;
    QTextEdit messageTextEdit;
    QSpinBox numberSpinBox;
};

#endif // MAINWINDOW_H
