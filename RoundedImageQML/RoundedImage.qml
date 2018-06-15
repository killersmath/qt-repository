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
                        property int innerWidth: imgContainer.width - imgContainer.border.width * 2
                        property int innerHeight: imgContainer.height - imgContainer.border.width * 2
                        id: rectContainer
                        width: innerWidth
                        height: 0
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.margins: imgContainer.border.width
                        clip: true
                        color: "transparent"
                        Rectangle {
                            id: rectMask
                            anchors.bottom: parent.bottom
                            width:  rectContainer.innerWidth
                            height: rectContainer.innerHeight
                            radius: Math.max(0, root.radius - imgContainer.border.width)
                        }

                        SequentialAnimation{
                            running: img.status == Image.Ready
                            loops: Animation.Infinite

                            NumberAnimation{
                                target: rectContainer
                                properties: "height"
                                from: 0
                                to: rectContainer.innerHeight
                                duration: 5000
                            }
                            PauseAnimation{
                                duration: 1000
                            }
                            NumberAnimation{
                                target: rectContainer
                                properties: "height"
                                from: rectContainer.innerHeight
                                to: 0
                                duration: 5000
                            }
                        }
                    }
                }
            }
        }
    }
}
