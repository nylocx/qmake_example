import QtQuick 2.5
import QtQuick.Window 2.2

// Setup a 300x200 window with a 200x80 centered rectangle on it
Window {
    visible: true

    width: 300
    height: 200

    MouseArea {
        anchors.fill: parent

        onClicked: {
            Qt.quit();
        }
    }


    Rectangle {
        anchors.centerIn: parent

        width: 200
        height: 80

        color: "lightgray"

        Text {
            anchors.centerIn: parent

            // Bind the property of the Utility instance to the text item
            text: Utility.myProperty ? Utility.myProperty : qsTr("Hello World\n(push me)")
            horizontalAlignment: Text.AlignHCenter
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                // Call the doFancyStuff function od the Utility instance
                Utility.doFancyStuff()
            }
        }
    }
}
