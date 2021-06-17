import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

import "../imports"
import "../fonts"

ApplicationWindow {
    visible: true
    
    id: screenInput
    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        rows: 2
        columns: 1

        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            Layout.fillHeight: true
            Layout.fillWidth: true

            Label {
                id: label
                text: qsTr("ПО Журнал контроля")
                horizontalAlignment: Text.AlignHCenter
                bottomPadding: 2
                rightPadding: 2
                leftPadding: 2
                topPadding: 10
                font.pointSize: 20
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillHeight: false
                Layout.fillWidth: true
            }
        }

        ColumnLayout {
            id: columnLayout
            width: 100
            height: 100
            Layout.rightMargin: 10
            Layout.leftMargin: 10

            TabBar {
                id: tabBar
                height: 50
              /*  anchors.left: stackLayout.left
                anchors.right: stackLayout.right
                anchors.bottom: stackLayout.top*/
                rightPadding: 20
                leftPadding: 20
                font.capitalization: Font.MixedCase
                Layout.rightMargin: 0
                Layout.leftMargin: 0
                Layout.fillWidth: true
                Layout.fillHeight: false
                TabButton {
                    text: "Журнал контроля"
                    font.pointSize: 14
                    display: AbstractButton.TextBesideIcon
                }

                TabButton {
                    text: "Справочник оборудования"
                    font.capitalization: Font.MixedCase
                    font.hintingPreference: Font.PreferDefaultHinting
                    font.kerning: true
                    font.preferShaping: true
                    font.pointSize: 14
                }
            }

            StackLayout {
                id: stackLayout
                width: 100
                height: 100
                currentIndex: tabBar.currentIndex

                Rectangle {
                    id: rectangle
                    width: 200
                    height: 200
                    color: "#ffffff"
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

                Rectangle {
                    id: rectangle1
                    width: 200
                    height: 200
                    visible: false
                    color: "#ffffff"
                    Layout.preferredHeight: -1
                    Layout.preferredWidth: -1
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
            }
        }
    }
}
