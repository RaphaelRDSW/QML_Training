import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row{
        Rectangle{
            id:redRect
            width: 100
            height: 100
            color: "red"
            MouseArea{
                id:redRecMouseAreaId
                anchors.fill: parent
                onClicked: console.log("Clicked in the red rectangle")

            }
        }


        Rectangle{
            id:greenRect
            width: 100
            height: 100
            color: "green"

            Connections{
                    target:redRecMouseAreaId
                    onClicked:{
                        console.log("this green rectangel responding")
                    }
            }
        }

        Rectangle{
            id:blueRect
            color: "blue"
            width: 100
            height: 100
            Connections{
                target : redRecMouseAreaId
                onClicked : {
                    console.log("this is blue rect responding")
                }
            }
        }

    }
}

