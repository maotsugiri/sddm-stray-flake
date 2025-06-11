import QtQuick 6.8
import QtQuick.Controls 6.8

TextField {
    id: passwordField

    function playShakeAnimation() {
        shakeAnimation.start();
    }
    
    focus: true
    selectByMouse: false
    clip: true
    autoScroll: true
    placeholderText: ""
    echoMode: TextInput.Password
    passwordCharacter: "*•"
    passwordMaskDelay: config.PasswordShowLastCharDelay

    
    font {
        family: primaryFont.name
    }
    color: "white"
    selectionColor: "white"
    background: null
    padding: 0

    horizontalAlignment: TextInput.AlignHCenter
    verticalAlignment: TextInput.AlignVCenter

    // states: [
    //     State {
    //         name: "focused"
    //         when: passwordField.activeFocus

    //         PropertyChanges {
    //             target: passFieldBackground
    //             opacity: 0.5
    //         }

    //     },
    //     State {
    //         name: "hovered"
    //         when: passwordField.hovered

    //         PropertyChanges {
    //             target: passFieldBackground
    //             opacity: 1
    //         }

    //     }
    // ]

    // Define a shake animation
    SequentialAnimation {
        id: shakeAnimation

        NumberAnimation {
            target: passwordField
            properties: "x"
            from: passwordField.x
            to: passwordField.x - 10
            duration: 50
        }

        NumberAnimation {
            target: passwordField
            properties: "x"
            from: passwordField.x - 10
            to: passwordField.x + 10
            duration: 50
        }

        NumberAnimation {
            target: passwordField
            properties: "x"
            from: passwordField.x + 10
            to: passwordField.x - 10
            duration: 50
        }

        NumberAnimation {
            target: passwordField
            properties: "x"
            from: passwordField.x - 10
            to: passwordField.x + 10
            duration: 50
        }

        NumberAnimation {
            target: passwordField
            properties: "x"
            from: passwordField.x + 10
            to: passwordField.x
            duration: 50
        }

    }

    transitions: Transition {
        PropertyAnimation {
            properties: "opacity"
            duration: 300
        }

    }

}
