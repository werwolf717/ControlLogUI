import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import test 1.0

import "../imports"
import "../fonts"

ApplicationWindow {
    id: screenInput

    visible: true
    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor
    title: qsTr("Control log")

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        rows: 2
        columns: 1

        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true

            Label {
                id: label
                text: qsTr("ПО Журнал контроля,")
                //  anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                bottomPadding: 2
                rightPadding: 2
                leftPadding: 2
                topPadding: 10
                font.pointSize: 16
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillHeight: false
                Layout.fillWidth: false
            }

            Label {
                id: label1
                text: ctrlForm.userName
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                rightPadding: 2
                bottomPadding: 2
                leftPadding: 2
                topPadding: 10
                font.pointSize: 16
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillHeight: false
                Layout.fillWidth: false
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

                    RowLayout {
                        id: rowLayout1
                        anchors.fill: parent

                        Rectangle {
                            id: rectangle2
                            width: 200
                            height: 200
                            color: "#ffffff"
                            border.width: 0
                            Layout.rightMargin: 12
                            Layout.margins: 25
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            ColumnLayout {
                                id: columnLayout1
                                anchors.fill: parent
                                spacing: -1.5

                                Rectangle {
                                    id: rectangle4
                                    width: 200
                                    height: 200
                                    color: "#ffffff"
                                    border.width: 3
                                    Layout.preferredHeight: 100
                                    Layout.preferredWidth: -1
                                    Layout.columnSpan: 1
                                    Layout.rowSpan: 1
                                    Layout.fillHeight: false
                                    Layout.fillWidth: true

                                    RowLayout {
                                        id: rowLayout2
                                        width: 100
                                        height: 100

                                        RadioButton {
                                            id: radioButton
                                            text: qsTr("Считыватель")
                                            Layout.leftMargin: 25
                                            checked: true
                                        }

                                        RadioButton {
                                            id: radioButton1
                                            text: qsTr("Генератор азота")
                                            Layout.fillWidth: false
                                        }
                                    }
                                }

                                Rectangle {
                                    id: rectangle5
                                    width: 200
                                    height: 200
                                    color: "#ffffff"
                                    border.width: 3
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                }

                                Rectangle {
                                    id: rectangle6
                                    width: 200
                                    height: 200
                                    color: "#ffffff"
                                    border.width: 3
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                }

                                Rectangle {
                                    id: rectangle7
                                    width: 200
                                    height: 200
                                    color: "#ffffff"
                                    border.width: 3
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                }
                            }
                        }

                        Rectangle {
                            id: rectangle3
                            width: 200
                            height: 200
                            color: "#ffffff"
                            border.width: 3
                            Layout.leftMargin: 12
                            Layout.margins: 25
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                        }
                    }
                }
            }
        }
    }
    
    UIControllerForm {
        id: ctrlForm
    }
}
