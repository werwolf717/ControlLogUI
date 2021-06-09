import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import test 1.0

import "../imports"
import "../fonts"

Rectangle {
    id: screenLogIN
    width: Constants.login_width
    height: Constants.login_height
    
    property UIController target: null

    color: Constants.backgroundColor

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        anchors.rightMargin: 5
        transformOrigin: Item.Center
        rows: 4
        columns: 1

        RowLayout {
            id: rowLayout
            Layout.fillWidth: true
            Layout.fillHeight: false

            Label {
                id: label
                text: qsTr("Login")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                textFormat: Text.AutoText
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.leftMargin: 5
                Layout.rightMargin: 5
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            TextField {
                id: textField
                horizontalAlignment: Text.AlignHCenter
                Layout.minimumWidth: 240
                Layout.maximumWidth: 240
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                placeholderText: qsTr("Enter user name")
            }
        }

        RowLayout {
            id: rowLayout1
            Layout.fillWidth: true
            Layout.fillHeight: false

            Label {
                id: label1
                text: qsTr("Password")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.leftMargin: 5
                Layout.rightMargin: 5
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            TextField {
                id: textField1
                text: ""
                horizontalAlignment: Text.AlignHCenter
                clip: false
                font.strikeout: false
                renderType: Text.QtRendering
                Layout.minimumWidth: 240
                Layout.maximumWidth: 240
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                placeholderText: qsTr("Enter password")
                echoMode: "Password"
            }
        }

        RowLayout {
            id: rowLayout2
            Layout.fillWidth: true
            Layout.fillHeight: false

            Label {
                id: label2
                text: qsTr("Database")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                Layout.minimumWidth: 0
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.leftMargin: 5
                Layout.fillHeight: true
                Layout.fillWidth: true
                rightPadding: 5
            }

            ComboBox {
                id: comboBox
                Layout.minimumWidth: 240
                Layout.maximumWidth: 240
                Layout.fillHeight: true
                Layout.fillWidth: true
                model: Net.toListModel(ctrl.dbList)
                onActivated: ctrl.selecteddbList = currentText
            }
        }

        RowLayout {
            id: rowLayout3
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            Layout.fillHeight: true

            Button {
                id: button
                text: qsTr("Ok")
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.fillHeight: false
                Layout.fillWidth: false
            }

            Button {
                id: button1
                text: qsTr("Cancel")
                Layout.fillHeight: false
            }
        }
    }
    
        UIController {
            id: ctrl
    
           /* Component.onCompleted: {
                ctrl.initialize()
            }
    
            function handleConnect() {
                ctrl.connect()
            }
    
            function handleDisconnect() {
                ctrl.disconnect()
            }*/
        }
}
