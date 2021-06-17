import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import test 1.0

import "../imports"
import "../fonts"

Rectangle {
    id: screenLogIN
    enabled: true
    width: Constants.login_width
    height: Constants.login_height
    
    property UIControllerMain target: null
    signal cancel()
    signal access()
    onTargetChanged: cancel.connect(target.handleCancelButton), 
                    cancel.connect(ctrlLogin.handleCancelButton), 
                    access.connect(target.handleAccessButton),
                    access.connect(ctrlLogin.handleAccessButton)
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
                text: target.user
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
                model: Net.toListModel(ctrlLogin.dbList)
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
                onClicked: access()
            }

            Button {
                id: button1
                text: qsTr("Cancel")
                Layout.fillHeight: false
                onClicked: cancel()
            }
        }
    }
    
        UIController {
            id: ctrlLogin
            
            function handleAccessButton() 
            {
                ctrlLogin.user = textField.text
                ctrlLogin.password = textField1.text
                ctrlLogin.selecteddbList = comboBox.currentText
                ctrlLogin.access_button_click()
            }
            
            function handleCancelButton()
            {
                ctrlLogin.cancel_button_click()
            }
        }
        
}
