import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Q_PROPERTY demo")


    Column{
        Text {
            id: titleId
            text: Movie.title
            width:500
            font.pointSize: 20
        }

        Text {
            id: mainCharacter
            text: Movie.mainCharacter
            width:500
            font.pointSize: 20
        }

    }
}
