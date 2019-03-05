import QtQuick 2.8
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

import net.reachtech 1.0

ApplicationWindow {
    id: window
    width: 800; height: 480
    visible: true
    color: "black"

    Network {
        id: net
    }

    Text {
        objectName: "fanSpeed"
        color: "white"
        text: net.ipAddress
    }

    Image {
        asynchronous: true
        width: 600
        height: 400
        anchors.centerIn: parent
        source: "images/qt_logo.png"

        MouseArea {
            id: playArea
            anchors.fill: parent
        }
    }

    /*
    statusBar: StatusBar {
        RowLayout {
            anchors.fill: parent
            Label {
                objectName: "status"
                text: "Waiting"
            }
        }
    }
    */
}

