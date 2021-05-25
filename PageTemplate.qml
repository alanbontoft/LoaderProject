import QtQuick 2.0

Item {

    anchors.fill: parent

    property alias message: msg.text

    Text {
        id: msg
        anchors.centerIn: parent
        font.pixelSize: 20
    }

}

