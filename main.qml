import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: root
    visible: true
    width: 800
    height: 600
    title: qsTr("Hello World")

    color: "grey"

    header: Rectangle {
        id: toolBar
        color: "black"
        height: 60
        /*anchors {
            left: root.left
            right: root.right
            top: root.top
        }*/

        RowLayout {

            height: parent.height

            Button {
                id: btnOne
                text: "Page 1"

                onClicked: showPage(pageOne)
            }


            Button {
                id: btnTwo
                text: "Page 2"

                onClicked: showPage(pageTwo)
            }


            Button {
                id: btnThree
                text: "Page 3"

                onClicked: showPage(pageThree)
            }

            Item {
                width: 50
            }

            Button {
                id: btnHome
                text: "Home"

                onClicked: showPage(pageHome)
            }

            Button {
                id: btnClear
                text: "Clear"

                onClicked: loader.active = false
            }
        }
    }

    Loader {
        id: loader
        anchors.fill: parent
        sourceComponent: pageHome
    }

    Component {
        id: pageHome
        PageTemplate {

            message: "This is the Home page"
        }
    }

    Component {
        id: pageOne
        PageTemplate {
            message: "This is page 1"
        }
    }

    Component {
        id: pageTwo
        PageTemplate {
            message: "This is page 2"
        }
    }

    Component {
        id: pageThree
        PageTemplate {
            message: "This is page 3"
        }
    }

    function showPage(page)
    {
        loader.active = true
        loader.sourceComponent = page
    }
}
