import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import test 1.0

import "../imports"
import "../fonts"
import "../../../images"

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
            
            Label {
                id: label27
                text: ctrlForm.userRole
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                Layout.fillWidth: false
                topPadding: 10
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                bottomPadding: 2
                Layout.fillHeight: false
                leftPadding: 2
                font.pointSize: 16
                rightPadding: 2
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
                    
                    ColumnLayout {
                        id: columnLayout44
                        anchors.fill: parent
                    }
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
                                            font.pointSize: 12
                                            checked: true
                                            Layout.fillHeight: false
                                            Layout.fillWidth: false
                                            Layout.leftMargin: 25

                                            Connections {
                                                target: radioButton
                                              //  onToggled: console.log(label7.text)

                                                function onToggled()
                                                {
                                                    label7.text = "Напряжение ФЭУ А, В"
                                                    rectangle14.visible = true
                                                    rectangle15.visible = true
                                                    rectangle16.visible = true
                                                    rectangle17.visible = true
                                                    rectangle18.visible = true
                                                    rectangle19.visible = true
                                                    rectangle20.visible = true
                                                    rectangle21.visible = true
                                                    rectangle22.visible = true
                                                    rectangle28.visible = true
                                                    rectangle31.visible = true
                                                    rectangle34.visible = true
                                                }
                                            }
                                        }

                                        RadioButton {
                                            id: radioButton1
                                            text: qsTr("Генератор азота")
                                            font.pointSize: 12
                                            Layout.fillWidth: false

                                            Connections {
                                                target: radioButton1
                                                //onToggled: console.log("clicked")
                                                function onToggled()
                                                {
                                                    label7.text = "Давление на выходе, бар"
                                                    rectangle14.visible = false
                                                    rectangle15.visible = false
                                                    rectangle16.visible = false
                                                    rectangle17.visible = false
                                                    rectangle18.visible = false
                                                    rectangle19.visible = false
                                                    rectangle20.visible = false
                                                    rectangle21.visible = false
                                                    rectangle22.visible = false
                                                    rectangle28.visible = false
                                                    rectangle31.visible = false
                                                    rectangle34.visible = false
                                                }
                                            }
                                        }
                                    }
                                }

                                Rectangle {
                                    id: rectangle5
                                    width: 200
                                    height: 200
                                    color: "#ffffff"
                                    border.width: 3
                                    Layout.columnSpan: 1
                                    Layout.preferredHeight: 100
                                    Layout.fillHeight: false
                                    Layout.fillWidth: true

                                    RowLayout {
                                        id: rowLayout3
                                        width: 100
                                        height: 100

                                        Label {
                                            id: label2
                                            text: qsTr("Помещение")
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            font.pointSize: 12
                                            Layout.leftMargin: 25
                                        }

                                        ComboBox {
                                            id: comboBox
                                            displayText: ""
                                            Layout.preferredWidth: 250
                                            Layout.rightMargin: 0
                                            Layout.fillWidth: false




                                        }
                                    }
                                }

                                Rectangle {
                                    id: rectangle6
                                    width: 200
                                    height: 200
                                    color: "#ffffff"
                                    border.width: 3
                                    Layout.preferredHeight: -1
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true

                                    ColumnLayout {
                                        id: columnLayout2
                                        anchors.fill: parent
                                        spacing: 0

                                        Label {
                                            id: label3
                                            text: qsTr("Допустимые пределы по справочнику")
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            font.pointSize: 12
                                            Layout.topMargin: 20
                                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                            Layout.leftMargin: 25
                                            Layout.fillWidth: false
                                        }

                                        GridLayout {
                                            id: gridLayout1
                                            width: 100
                                            height: 100
                                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                            columnSpacing: -2
                                            Layout.margins: 15
                                            rows: 5
                                            columns: 3
                                            Layout.fillHeight: false
                                            Layout.fillWidth: true

                                            Rectangle {
                                                id: rectangle10
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 0
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                            }

                                            Rectangle {
                                                id: rectangle8
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 135
                                                Layout.preferredHeight: 30
                                                Layout.fillHeight: false
                                                Layout.fillWidth: false

                                                Label {
                                                    id: label5
                                                    color: "#ea0000"
                                                    text: qsTr("ниж. предел")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignHCenter
                                                    verticalAlignment: Text.AlignVCenter
                                                    anchors.rightMargin: 0
                                                    anchors.bottomMargin: 0
                                                    anchors.leftMargin: 0
                                                    anchors.topMargin: 0
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle9
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 135
                                                Layout.fillHeight: false
                                                Layout.preferredHeight: 30

                                                Label {
                                                    id: label6
                                                    color: "#ea0000"
                                                    text: qsTr("верх. предел")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignHCenter
                                                    verticalAlignment: Text.AlignVCenter
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle24
                                                width: 200
                                                height: 200
                                                visible: false
                                                color: "#ffffff"
                                                border.width: 0
                                                Layout.columnSpan: 1
                                                Layout.rowSpan: 1
                                                Layout.fillHeight: false
                                                Layout.fillWidth: false
                                                Layout.leftMargin: 4
                                                Layout.preferredWidth: 25
                                                Layout.preferredHeight: 30
                                            }

                                            Rectangle {
                                                id: rectangle11
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.leftMargin: 0
                                                Layout.preferredHeight: 30
                                                Layout.fillHeight: false
                                                Layout.fillWidth: true

                                                Label {
                                                    id: label7
                                                    text: qsTr("Напряжение ФЭУ А, В")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    font.pointSize: 12
                                                    anchors.leftMargin: 15
                                                    leftInset: 0
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle12
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 135
                                                Layout.preferredHeight: 30
                                                Layout.fillHeight: false
                                                Layout.fillWidth: false

                                                MouseArea {
                                                    id: mouseArea
                                                    anchors.fill: parent
                                                    cursorShape: Qt.PointingHandCursor

                                                    Label {
                                                        id: label11
                                                        text: qsTr("")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField1
                                                        visible: false
                                                        anchors.fill: parent
                                                        topPadding: 2
                                                        font.pointSize: 11
                                                        bottomPadding: 10
                                                        layer.enabled: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        clip: false
                                                        placeholderText: qsTr("Enter text")
                                                    }

                                                    Connections {
                                                        target: mouseArea


                                                       /*   function onDoubleClicked()
                                                        {
                                                            textField1.text = label11.text
                                                            label11.visible = false
                                                            textField1.visible = true
                                                        }*/
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle13
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 135
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false

                                                MouseArea {
                                                    id: mouseArea1
                                                    anchors.fill: parent
                                                    cursorShape: Qt.PointingHandCursor

                                                    Label {
                                                        id: label12
                                                        text: qsTr("")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField2
                                                        visible: false
                                                        anchors.fill: parent
                                                        font.pointSize: 11
                                                        bottomPadding: 10
                                                        topPadding: 2
                                                        layer.enabled: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        clip: false
                                                        placeholderText: qsTr("Enter text")
                                                    }

                                                    Connections {
                                                        target: mouseArea1


                                                     /*     function onDoubleClicked()
                                                        {
                                                            textField2.text = label12.text
                                                            label12.visible = false
                                                            textField2.visible = true
                                                        }*/
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle25
                                                width: 200
                                                height: 200
                                                visible: false
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 30
                                                Layout.preferredHeight: 30

                                                RoundButton {
                                                    id: roundButton
                                                    x: 0
                                                    y: 0
                                                    text: "+"
                                                    anchors.fill: parent
                                                    display: AbstractButton.IconOnly

                                                    Image {
                                                        id: image
                                                        anchors.fill: parent
                                                        source: "../../../images/edit3.png"
                                                        anchors.rightMargin: 3
                                                        anchors.leftMargin: 3
                                                        anchors.bottomMargin: 3
                                                        anchors.topMargin: 3
                                                        fillMode: Image.PreserveAspectFit
                                                    }

                                                    Connections {
                                                        target: roundButton

                                                         function onClicked()
                                                        {

                                                             if(label12.visible && label11.visible)
                                                             {
                                                                textField2.text = label12.text
                                                                label12.visible = !label12.visible
                                                                textField2.visible = !textField2.visible
                                                                textField1.text = label11.text
                                                                label11.visible = !label11.visible
                                                                textField1.visible = !textField1.visible

                                                                 image.source = "../../../images/cancel2.png"
                                                             }
                                                             else
                                                             {
                                                                 label12.visible = !label12.visible
                                                                 textField2.visible = !textField2.visible
                                                                 label11.visible = !label11.visible
                                                                 textField1.visible = !textField1.visible

                                                                  image.source = "../../../images/edit3.png"
                                                             }
                                                        }
                                                    }


                                                }
                                            }

                                            Rectangle {
                                                id: rectangle14
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false

                                                Label {
                                                    id: label8
                                                    text: qsTr("Напряжение ФЭУ В, В")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle15
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 135
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false

                                                MouseArea {
                                                    id: mouseArea2
                                                    anchors.fill: parent
                                                    cursorShape: Qt.PointingHandCursor

                                                    Label {
                                                        id: label17
                                                        text: qsTr("")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField3
                                                        visible: false
                                                        anchors.fill: parent
                                                        font.pointSize: 11
                                                        bottomPadding: 10
                                                        topPadding: 2
                                                        layer.enabled: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        clip: false
                                                        placeholderText: qsTr("Enter text")
                                                    }

                                                    Connections {
                                                        target: mouseArea2


                                                        /*  function onDoubleClicked()
                                                        {
                                                            textField3.text = label17.text
                                                            label17.visible = false
                                                            textField3.visible = true
                                                        }*/
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle16
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 135
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false

                                                MouseArea {
                                                    id: mouseArea3
                                                    anchors.fill: parent
                                                    cursorShape: Qt.PointingHandCursor

                                                    Label {
                                                        id: label18
                                                        text: qsTr("")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField4
                                                        visible: false
                                                        anchors.fill: parent
                                                        font.pointSize: 11
                                                        bottomPadding: 10
                                                        topPadding: 2
                                                        layer.enabled: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        clip: false
                                                        placeholderText: qsTr("Enter text")
                                                    }

                                                    Connections {
                                                        target: mouseArea3


                                                        /*  function onDoubleClicked()
                                                        {
                                                            textField4.text = label18.text
                                                            label18.visible = false
                                                            textField4.visible = true
                                                        }*/
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle28
                                                width: 200
                                                height: 200
                                                visible: false
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 30
                                                Layout.preferredHeight: 30

                                                RoundButton {
                                                    id: roundButton1
                                                    x: 0
                                                    y: 0
                                                    text: "+"
                                                    anchors.fill: parent
                                                    layer.mipmap: false
                                                    layer.format: ShaderEffectSource.RGB
                                                    focusPolicy: Qt.ClickFocus
                                                    display: AbstractButton.IconOnly
                                                    
                                                    Image {
                                                        id: image1
                                                        anchors.fill: parent
                                                        source: "../../../images/edit3.png"
                                                        anchors.rightMargin: 3
                                                        anchors.leftMargin: 3
                                                        anchors.bottomMargin: 3
                                                        anchors.topMargin: 3
                                                        fillMode: Image.PreserveAspectFit
                                                    }
                                                                                                        
                                                    Connections {
                                                        target: roundButton1
                                                        function onClicked()
                                                        {
    
                                                             if(label17.visible && label18.visible)
                                                             {
                                                                textField3.text = label17.text
                                                                label17.visible = !label17.visible
                                                                textField3.visible = !textField3.visible
                                                                
                                                                textField4.text = label18.text
                                                                label18.visible = !label18.visible
                                                                textField4.visible = !textField4.visible
    
                                                                 image1.source = "../../../images/cancel2.png"
                                                             }
                                                             else
                                                             {
                                                                 label17.visible = !label17.visible
                                                                 textField3.visible = !textField3.visible
                                                                 
                                                                 label18.visible = !label18.visible
                                                                 textField4.visible = !textField4.visible
    
                                                                  image1.source = "../../../images/edit3.png"
                                                             }
                                                        }
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle17
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false

                                                Label {
                                                    id: label9
                                                    text: qsTr("Температура блока питания, С")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle18
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 135
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false

                                                MouseArea {
                                                    id: mouseArea4
                                                    anchors.fill: parent
                                                    cursorShape: Qt.PointingHandCursor

                                                    Label {
                                                        id: label19
                                                        text: qsTr("")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField5
                                                        visible: false
                                                        anchors.fill: parent
                                                        font.pointSize: 11
                                                        bottomPadding: 10
                                                        topPadding: 2
                                                        layer.enabled: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        clip: false
                                                        placeholderText: qsTr("Enter text")
                                                    }

                                                    Connections {
                                                        target: mouseArea4


                                                        /*  function onDoubleClicked()
                                                        {
                                                            textField5.text = label19.text
                                                            label19.visible = false
                                                            textField5.visible = true
                                                        }*/
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle19
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 135
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false

                                                MouseArea {
                                                    id: mouseArea5
                                                    anchors.fill: parent
                                                    cursorShape: Qt.PointingHandCursor

                                                    Label {
                                                        id: label20
                                                        text: qsTr("")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField6
                                                        visible: false
                                                        anchors.fill: parent
                                                        font.pointSize: 11
                                                        bottomPadding: 10
                                                        topPadding: 2
                                                        layer.enabled: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        clip: false
                                                        placeholderText: qsTr("Enter text")
                                                    }

                                                    Connections {
                                                        target: mouseArea5


                                                        /*  function onDoubleClicked()
                                                        {
                                                            textField6.text = label20.text
                                                            label20.visible = false
                                                            textField6.visible = true
                                                        }*/
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle31
                                                width: 200
                                                height: 200
                                                visible: false
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 30
                                                Layout.preferredHeight: 30

                                                RoundButton {
                                                    id: roundButton2
                                                    x: 0
                                                    y: 0
                                                    text: "+"
                                                    anchors.fill: parent
                                                    display: AbstractButton.IconOnly

                                                    Image {
                                                        id: image2
                                                        anchors.fill: parent
                                                        source: "../../../images/edit3.png"
                                                        anchors.rightMargin: 3
                                                        anchors.leftMargin: 3
                                                        anchors.bottomMargin: 3
                                                        anchors.topMargin: 3
                                                        fillMode: Image.PreserveAspectFit
                                                    }
                                                    
                                                    Connections {
                                                        target: roundButton2
                                                        function onClicked()
                                                        {
    
                                                             if(label19.visible && label20.visible)
                                                             {
                                                                textField5.text = label19.text
                                                                label19.visible = !label19.visible
                                                                textField5.visible = !textField5.visible
                                                                
                                                                textField6.text = label20.text
                                                                label20.visible = !label20.visible
                                                                textField6.visible = !textField6.visible
    
                                                                 image2.source = "../../../images/cancel2.png"
                                                             }
                                                             else
                                                             {
                                                                 label19.visible = !label19.visible
                                                                 textField5.visible = !textField5.visible
                                                                 
                                                                 label20.visible = !label20.visible
                                                                 textField6.visible = !textField6.visible
    
                                                                  image2.source = "../../../images/edit3.png"
                                                             }
                                                        }
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle20
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false

                                                Label {
                                                    id: label10
                                                    text: qsTr("Температура теплообменника, С")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle21
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 135
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false

                                                MouseArea {
                                                    id: mouseArea6
                                                    anchors.fill: parent
                                                    cursorShape: Qt.PointingHandCursor

                                                    Label {
                                                        id: label21
                                                        text: qsTr("")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField7
                                                        visible: false
                                                        anchors.fill: parent
                                                        font.pointSize: 11
                                                        bottomPadding: 10
                                                        topPadding: 2
                                                        layer.enabled: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        clip: false
                                                        placeholderText: qsTr("Enter text")
                                                    }

                                                    Connections {
                                                        target: mouseArea6


                                                        /*  function onDoubleClicked()
                                                        {
                                                            textField7.text = label21.text
                                                            label21.visible = false
                                                            textField7.visible = true
                                                        }*/
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle22
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 135
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false

                                                MouseArea {
                                                    id: mouseArea7
                                                    anchors.fill: parent
                                                    cursorShape: Qt.PointingHandCursor

                                                    Label {
                                                        id: label22
                                                        text: qsTr("")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField8
                                                        visible: false
                                                        anchors.fill: parent
                                                        font.pointSize: 11
                                                        bottomPadding: 10
                                                        topPadding: 2
                                                        layer.enabled: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        clip: false
                                                        placeholderText: qsTr("Enter text")
                                                    }

                                                    Connections {
                                                        target: mouseArea7


                                                        /*  function onDoubleClicked()
                                                        {
                                                            textField8.text = label22.text
                                                            label22.visible = false
                                                            textField8.visible = true
                                                        }*/
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle34
                                                width: 200
                                                height: 200
                                                visible: false
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 30
                                                Layout.preferredHeight: 30

                                                RoundButton {
                                                    id: roundButton3
                                                    text: "+"
                                                    anchors.fill: parent
                                                    display: AbstractButton.IconOnly

                                                    Image {
                                                        id: image3
                                                        anchors.fill: parent
                                                        source: "../../../images/edit3.png"
                                                        anchors.rightMargin: 3
                                                        anchors.leftMargin: 3
                                                        anchors.bottomMargin: 3
                                                        anchors.topMargin: 3
                                                        fillMode: Image.PreserveAspectFit
                                                    }
                                                    
                                                    Connections {
                                                        target: roundButton3
                                                        function onClicked()
                                                        {
        
                                                             if(label21.visible && label22.visible)
                                                             {
                                                                textField7.text = label21.text
                                                                label21.visible = !label21.visible
                                                                textField7.visible = !textField7.visible
                                                                
                                                                textField8.text = label22.text
                                                                label22.visible = !label22.visible
                                                                textField8.visible = !textField8.visible
        
                                                                 image3.source = "../../../images/cancel2.png"
                                                             }
                                                             else
                                                             {
                                                                 label21.visible = !label21.visible
                                                                 textField7.visible = !textField7.visible
                                                                 
                                                                 label22.visible = !label22.visible
                                                                 textField8.visible = !textField8.visible
        
                                                                  image3.source = "../../../images/edit3.png"
                                                             }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }

                                Rectangle {
                                    id: rectangle7
                                    width: 200
                                    height: 200
                                    color: "#ffffff"
                                    border.width: 3
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true

                                    ColumnLayout {
                                        id: columnLayout3
                                        anchors.fill: parent
                                        spacing: 0

                                        Label {
                                            id: label4
                                            text: qsTr("Данные по оборудованию")
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            Layout.topMargin: 20
                                            Layout.fillWidth: false
                                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                            font.pointSize: 12
                                            Layout.leftMargin: 25
                                        }

                                        GridLayout {
                                            id: gridLayout2
                                            width: 100
                                            height: 100
                                            rows: 4
                                            columns: 2
                                            columnSpacing: -2
                                            Layout.fillWidth: true
                                            Layout.margins: 15
                                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                            Layout.fillHeight: false

                                            Rectangle {
                                                id: rectangle26
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Label {
                                                    id: label13
                                                    text: qsTr("Полное наименование")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                                Layout.leftMargin: 0
                                            }

                                            Rectangle {
                                                id: rectangle27
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.leftMargin: 0
                                                layer.enabled: false
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Layout.preferredWidth: -1

                                                MouseArea {
                                                    id: mouseArea9
                                                    anchors.fill: parent
                                                    cursorShape: Qt.PointingHandCursor

                                                    Label {
                                                        id: label23
                                                        text: qsTr("456")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        wrapMode: Text.Wrap
                                                        textFormat: Text.AutoText
                                                        font.preferShaping: true
                                                        font.kerning: true
                                                        font.hintingPreference: Font.PreferDefaultHinting
                                                        layer.enabled: true
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField
                                                        visible: false
                                                        anchors.fill: parent
                                                        layer.enabled: false
                                                        clip: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        placeholderText: qsTr("Enter text")
                                                    }

                                                    Connections {
                                                        target: mouseArea9


                                                        /*  function onDoubleClicked()
                                                        {
                                                            textField.text = label23.text
                                                            label23.visible = false
                                                            textField.visible = true
                                                        }*/
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle37
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                visible: false
                                                border.width: 2
                                                Layout.preferredWidth: 40
                                                Layout.preferredHeight: 40
                                                Layout.fillHeight: false

                                                RoundButton {
                                                    id: roundButton4
                                                    text: "+"
                                                    anchors.fill: parent
                                                    display: AbstractButton.IconOnly

                                                    Image {
                                                        id: image4
                                                        anchors.fill: parent
                                                        source: "../../../images/edit3.png"
                                                        anchors.rightMargin: 3
                                                        anchors.leftMargin: 3
                                                        anchors.bottomMargin: 3
                                                        anchors.topMargin: 3
                                                        fillMode: Image.PreserveAspectFit
                                                    }
                                                    
                                                    Connections {
                                                        target: roundButton4
                                                        function onClicked()
                                                        {
        
                                                             if(label23.visible)
                                                             {
                                                                textField.text = label23.text
                                                                label23.visible = !label23.visible
                                                                textField.visible = !textField.visible
        
                                                                 image4.source = "../../../images/cancel2.png"
                                                             }
                                                             else
                                                             {
                                                                 label23.visible = !label23.visible
                                                                 textField.visible = !textField.visible
        
                                                                  image4.source = "../../../images/edit3.png"
                                                             }
                                                        }
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle29
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Label {
                                                    id: label14
                                                    text: qsTr("Краткое наименование")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle30
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Layout.preferredWidth: -1

                                                MouseArea {
                                                    id: mouseArea8
                                                    anchors.fill: parent

                                                    Label {
                                                        id: label24
                                                        text: qsTr("")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField9
                                                        visible: false
                                                        anchors.fill: parent
                                                        layer.enabled: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        clip: false
                                                        placeholderText: qsTr("Enter text")
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle38
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                visible: false
                                                border.width: 2
                                                Layout.preferredWidth: 40
                                                Layout.preferredHeight: 40

                                                RoundButton {
                                                    id: roundButton5
                                                    text: "+"
                                                    anchors.fill: parent
                                                    display: AbstractButton.IconOnly

                                                    Image {
                                                        id: image5
                                                        anchors.fill: parent
                                                        source: "../../../images/edit3.png"
                                                        anchors.rightMargin: 3
                                                        anchors.leftMargin: 3
                                                        anchors.bottomMargin: 3
                                                        anchors.topMargin: 3
                                                        fillMode: Image.PreserveAspectFit
                                                    }
                                                    
                                                    Connections {
                                                        target: roundButton5
                                                        function onClicked()
                                                        {
        
                                                             if(label24.visible)
                                                             {
                                                                textField9.text = label24.text
                                                                label24.visible = !label24.visible
                                                                textField9.visible = !textField9.visible
        
                                                                 image5.source = "../../../images/cancel2.png"
                                                             }
                                                             else
                                                             {
                                                                 label24.visible = !label24.visible
                                                                 textField9.visible = !textField9.visible
        
                                                                  image5.source = "../../../images/edit3.png"
                                                             }
                                                        }
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle32
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Label {
                                                    id: label15
                                                    text: qsTr("Серийный номер")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle33
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Layout.preferredWidth: -1

                                                MouseArea {
                                                    id: mouseArea10
                                                    anchors.fill: parent

                                                    Label {
                                                        id: label25
                                                        text: qsTr("")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField10
                                                        visible: false
                                                        anchors.fill: parent
                                                        layer.enabled: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        clip: false
                                                        placeholderText: qsTr("Enter text")
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle39
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                visible: false
                                                border.width: 2
                                                Layout.preferredWidth: 40
                                                Layout.preferredHeight: 40

                                                RoundButton {
                                                    id: roundButton6
                                                    text: "+"
                                                    anchors.fill: parent
                                                    display: AbstractButton.IconOnly

                                                    Image {
                                                        id: image6
                                                        anchors.fill: parent
                                                        source: "../../../images/edit3.png"
                                                        anchors.rightMargin: 3
                                                        anchors.leftMargin: 3
                                                        anchors.bottomMargin: 3
                                                        anchors.topMargin: 3
                                                        fillMode: Image.PreserveAspectFit
                                                    }
                                                    
                                                    Connections {
                                                        target: roundButton6
                                                        function onClicked()
                                                        {
        
                                                             if(label25.visible)
                                                             {
                                                                textField10.text = label25.text
                                                                label25.visible = !label25.visible
                                                                textField10.visible = !textField10.visible
        
                                                                 image6.source = "../../../images/cancel2.png"
                                                             }
                                                             else
                                                             {
                                                                 label25.visible = !label25.visible
                                                                 textField10.visible = !textField10.visible
        
                                                                  image6.source = "../../../images/edit3.png"
                                                             }
                                                        }
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle35
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Label {
                                                    id: label16
                                                    text: qsTr("Температура теплообменника, С")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle36
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Layout.preferredWidth: -1

                                                MouseArea {
                                                    id: mouseArea11
                                                    anchors.fill: parent

                                                    Label {
                                                        id: label26
                                                        text: qsTr("")
                                                        anchors.fill: parent
                                                        horizontalAlignment: Text.AlignLeft
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                    }

                                                    TextField {
                                                        id: textField11
                                                        visible: false
                                                        anchors.fill: parent
                                                        layer.enabled: false
                                                        anchors.rightMargin: 5
                                                        anchors.leftMargin: 5
                                                        clip: false
                                                        placeholderText: qsTr("Enter text")
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle40
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                visible: false
                                                border.width: 2
                                                Layout.preferredWidth: 40
                                                Layout.preferredHeight: 40

                                                RoundButton {
                                                    id: roundButton7
                                                    text: "+"
                                                    anchors.fill: parent
                                                    anchors.rightMargin: 0
                                                    anchors.leftMargin: 0
                                                    anchors.bottomMargin: 0
                                                    anchors.topMargin: 0
                                                    display: AbstractButton.IconOnly

                                                    Image {
                                                        id: image7
                                                        anchors.fill: parent
                                                        source: "../../../images/edit3.png"
                                                        anchors.rightMargin: 3
                                                        anchors.leftMargin: 3
                                                        anchors.bottomMargin: 3
                                                        anchors.topMargin: 3
                                                        fillMode: Image.PreserveAspectFit
                                                    }
                                                    
                                                    Connections {
                                                        target: roundButton7
                                                        function onClicked()
                                                        {
        
                                                             if(label26.visible)
                                                             {
                                                                textField11.text = label26.text
                                                                label26.visible = !label26.visible
                                                                textField11.visible = !textField11.visible
        
                                                                 image7.source = "../../../images/cancel2.png"
                                                             }
                                                             else
                                                             {
                                                                 label26.visible = !label26.visible
                                                                 textField11.visible = !textField11.visible
        
                                                                  image7.source = "../../../images/edit3.png"
                                                             }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }

                                Button {
                                    id: button
                                    text: qsTr("Savo in DB")
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

                            ColumnLayout {
                                id: columnLayout4
                                anchors.fill: parent
                            }
                        }
                    }
                }
            }
        }
    }
    
    UIControllerForm {
        id: ctrlForm
        Component.onCompleted: {
            if(label27.text == 'admin')
            {
                rectangle24.visible = true
                rectangle25.visible = true
                rectangle28.visible = true
                rectangle31.visible = true
                rectangle34.visible = true
                rectangle37.visible = true
                rectangle38.visible = true
                rectangle39.visible = true
                rectangle40.visible = true
                gridLayout1.columns = 4
                gridLayout2.columns = 3
            }
        }
    }
}
