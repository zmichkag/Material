import QtQuick 2.10
import QtQuick.Controls 2.1
import QtQuick.Window 2.2
import QtQuick.Controls.Material 2.3

ApplicationWindow {
    id: applicationWindow
    width: 600
    Material.theme: Material.Light
    title: qsTr("Test Invoke")
    visible: true
    height: 800

    Button {
        id: button_1
        x: 29
        y: 441
        width: 120
        height: 80
        text: "1"
        autoRepeat: false
        font.pointSize: 28
        font.bold: true

    }

    Button {
        id: button_2
        x: 155
        y: 441
        width: 120
        height: 80
        text: "2"
        autoRepeat: false
        font.pointSize: 28
        font.bold: true
    }

    Button {
        id: button_3
        x: 281
        y: 441
        width: 120
        height: 80
        text: "3"
        autoRepeat: false
        font.pointSize: 28
        font.bold: true
    }

    Button {
        id: button_4
        x: 29
        y: 527
        width: 120
        height: 80
        text: "4"
        autoRepeat: false
        font.pointSize: 28
        font.bold: true
    }

    Button {
        id: button_5
        x: 155
        y: 527
        width: 120
        height: 80
        text: "5"
        autoRepeat: false
        font.pointSize: 28
        font.bold: true
    }

    Button {
        id: button_6
        x: 281
        y: 527
        width: 120
        height: 80
        text: "6"
        autoRepeat: false
        font.pointSize: 28
        font.bold: true
    }

    Button {
        id: button_7
        x: 29
        y: 613
        width: 120
        height: 80
        text: "7"
        autoRepeat: false
        font.pointSize: 28
        font.bold: true
    }

    Button {
        id: button_8
        x: 155
        y: 613
        width: 120
        height: 80
        text: "8"
        autoRepeat: false
        font.pointSize: 28
        font.bold: true
    }

    Button {
        id: button_9
        x: 281
        y: 613
        width: 120
        height: 80
        text: "9"
        autoRepeat: false
        font.pointSize: 28
        font.bold: true
    }

    Button {
        id: button_0
        x: 29
        y: 699
        width: 120
        height: 80
        text: "0"
        autoRepeat: false
        font.pointSize: 28
        font.bold: true
    }

    Button {
        id: button_reset
        x: 419
        y: 441
        width: 160
        height: 80
        autoRepeat: false
        font.pointSize: 28
        font.bold: true
        text: "СБРОС"
        Material.foreground: "red"

    }

    Button {
        id: button_reset1
        x: 419
        y: 527
        width: 160
        height: 80
        text: "ПРОВЕРКА"
        autoRepeat: false
        font.pointSize: 18
        font.bold: true
        Material.foreground: "green"
    }

    Button {
        id: button_eq
        x: 419
        y: 613
        width: 160
        height: 80
        text: "ЛИНИЯ"
        autoRepeat: false
        font.pointSize: 28
        font.bold: true
    }

    Text {
        id: text_area
        x: 29
        y: 219
        width: 372
        height: 216
        text: qsTr("Text")
        font.pixelSize: 12
    }

    Text {
        id: lcd
        x: 29
        y: 31
        width: 227
        height: 64
        text: "PLU_NUMBER"
        font.pointSize: 16
    }

}
