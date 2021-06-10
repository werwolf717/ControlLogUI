import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

import "../imports"
import "../fonts"

ApplicationWindow {
    visible: true
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Text {
        text: qsTr("Hello ControlLogUI")
        anchors.centerIn: parent
        //font.family: Constants.font.family
    }
}
