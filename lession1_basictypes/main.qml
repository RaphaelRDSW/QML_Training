import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Connections {
            target: CppClass
            onSendInt: {
                    console.log("UI received is : "+ param + ",  type is :" + typeof (param))
            }
            onSendDouble :{
                   console.log("UI received is : "+ param + ",  type is :" + typeof (param))
            }

    }
    Button{
                id: mButton
                text: "click me"
                onClicked:  {
                        console.log("UI----->CPP : Start send a signal to CPP")
                       My_CppClass.cppSlot();
                }

    }

}
