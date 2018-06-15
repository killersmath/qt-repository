#include "mainwindow.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent)
{
    //messageTextEdit.setFixedHeight(110);

    numberSpinBox.setMaximum(100);
    sendButton.setText("Send Message");


    formLayout.addRow("Message", &messageTextEdit);
    formLayout.addRow("Number", &numberSpinBox);

    mainLayout.addLayout(&formLayout);

    mainLayout.addWidget(&sendButton);

    QWidget *centralWidget = new QWidget(this);
    centralWidget->setLayout(&mainLayout);

    setCentralWidget(centralWidget);

    this->setFixedSize(QSize(250, 150));
    this->setWindowTitle("Cpp Application");

    // connetions

    connect(&sendButton, &QPushButton::clicked, [this](){
        const QString message = messageTextEdit.toPlainText().replace('\n', " ").trimmed();
        int number = numberSpinBox.value();

        emit sendMessage(message, number);
    });
}

MainWindow::~MainWindow()
{
    emit quit();
}
