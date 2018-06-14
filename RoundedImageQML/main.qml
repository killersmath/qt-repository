import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rounded Image")

    ColumnLayout{
        anchors.centerIn: parent
        spacing: 15

        RowLayout{
            spacing: 5
            Text{
                text: "Radius"
            }

            Slider {
                id: radiusSlider
                value: 0.0
                Layout.fillWidth: true
                minimumValue: 0.0
                maximumValue :  Math.min(roundedImage.width, roundedImage.height) / 2
                stepSize: 1.0
            }

            Text{
                text: radiusSlider.value.toString();
            }
        }

        RowLayout{
            spacing: 5
            Text{
                text: "Border Width"
            }

            Slider {
                id: borderWidthSlider
                value: 5
                Layout.fillWidth: true
                minimumValue: 0.0
                maximumValue : Math.min(roundedImage.width, roundedImage.height) / 20
                stepSize: 1.0
            }

            Text{
                text: borderWidthSlider.value.toString();
            }
        }

        RoundedImage{
            id: roundedImage
            width: 190
            height: 190
            radius: radiusSlider.value
            border.color: "#385d8a"
            border.width: borderWidthSlider.value
            backgroundColor: "#f2f2f2"
            source: "https://www.gnu.org/graphics/nu-gnu.svg"
        }
    }
}
