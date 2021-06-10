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
        target: ctrl
        
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
    
    UIController {
        id: ctrl

        Component.onCompleted: {
            ctrl.initialize()
            mainWindow.title = "Login"
        }

       /* function handleConnect() {
            ctrl.connect()
        }*/

        function handleAccessButton() {
            screenLogIN.enabled = false;
            busyIndicator.visible = true;
            ctrl.access_button_click()
        }
        
        function handleCancelButton()
        {
            ctrl.cancel_button_click()
        }
    }
}
