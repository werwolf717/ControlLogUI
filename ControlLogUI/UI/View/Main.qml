import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

import "imports"
import "Page"
import "fonts"

ApplicationWindow {
    visible: true
    width: Constants.login_width
    height: Constants.login_height
    title: qsTr("UI")

    ScreenLogIN {
    }
}
