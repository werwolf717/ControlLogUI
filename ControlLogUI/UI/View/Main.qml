import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import test 1.0

import "imports"
import "Page"
import "fonts"

ApplicationWindow {
    visible: true
    width: Constants.login_width
    height: Constants.login_height
    title: qsTr("UI")

    ScreenLogIN {
        id: screenLogIN
        target: ctrl
    }
    
    UIController {
        id: ctrl

        Component.onCompleted: {
            ctrl.initialize()
        }

       /* function handleConnect() {
            ctrl.connect()
        }

        function handleDisconnect() {
            ctrl.disconnect()
        }*/
        
        function handleCancelButton()
        {
            ctrl.cancel_button_click()
        }
    }
}
