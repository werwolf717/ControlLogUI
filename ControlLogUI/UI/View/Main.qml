import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import test 1.0

import "imports"
import "Page"
import "fonts"

ApplicationWindow {
    id: mainWindow

    visible: true
    width: Constants.login_width
    height: Constants.login_height
    title: qsTr("UI")
    
    property bool isEnable: false

    ScreenLogIN {
        id: screenLogIN
        target: ctrlMain
        
        BusyIndicator {
                id: busyIndicator
                
                visible: false
                anchors.fill: parent
                rightPadding: 20
                bottomPadding: 20
                topPadding: 20
                leftPadding: 20
            }
    }
    
    UIControllerMain {
        id: ctrlMain

        Component.onCompleted: {
            ctrlMain.initialize()
            mainWindow.title = "Login"
            console.log("clicked")
        }

        function handleAccessButton() {
        console.log("clicked")
            screenLogIN.enabled = false;
            busyIndicator.visible = true;
           // ctrlMain.access_button_click()
        }
        
        function handleCancelButton()
        {
           // ctrlMain.cancel_button_click()
        }
    }
    
}
