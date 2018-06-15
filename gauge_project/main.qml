import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Extras 1.3

Window {
    visible: true
    width: 600
    height: 450
    minimumWidth: 500
    minimumHeight: 150
    title: "Qml Application"
    color: "steelblue"

    Gauge {
        id: gauge
        width: 450
        height: 60
        anchors.centerIn: parent

        orientation: Qt.Horizontal
        value: hMessage.value

        Behavior on value {
            NumberAnimation {
                duration: 1000
            }
        }
    }

    Label{
        id: messageLabel
        text: "Message:"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.margins: 5
        color: "white"
        font.pointSize: 13
        font.bold: true
    }

    Label{
        id: message
        anchors.left: messageLabel.right
        anchors.leftMargin: 5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 7
        text: hMessage.message
        color: "white"
        font.pointSize: 10
    }

    Connections{
        target: hMessage
        onValueChanged: console.log("Number Changed: " + value);
        onMessageChanged: console.log("Message Changed: " + message);
    }
}
