import QtQuick 2.0
import QtGraphicalEffects 1.0

Item{
    id: root
    property alias border: imgContainer.border
    property alias backgroundColor: imgContainer.color
    property alias source: img.source
    property int radius: 0

    Rectangle{
        id: imgContainer
        anchors.fill: parent
        radius: root.radius

        Image {
            id: img
            anchors.fill: parent
            layer.enabled: true
            layer.effect: OpacityMask {
                maskSource: Item {
                    width: imgContainer.width
                    height: imgContainer.height
                    Rectangle{
                        id: rectContainer
                        width: parent.width
                        height: parent.height
                        anchors.bottom: parent.bottom
                        clip: true
                        color: "transparent"
                        Rectangle {
                            id: rectMask
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.margins: imgContainer.border.width
                            height: imgContainer.height - imgContainer.border.width * 2
                            radius: Math.max(0, root.radius - imgContainer.border.width)
                        }
                    }
                }
            }
        }
    }
}
