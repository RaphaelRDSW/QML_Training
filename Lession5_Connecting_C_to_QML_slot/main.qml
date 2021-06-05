import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Cpp Sending Signal")


    Connections{

        target: CppSignalSender
        onCallQml : {
            console.log("this is QML: got a call from CPP")
            //console.log(qsTr(parameter))
            mText.text = parameter;
        }

        onCppTimer:{
            mRectText.text = value;
        }

    }


    Rectangle{
        width:200
        height:200
        color: "red"
        radius: 20
        Text {
            id: mRectText
            text: qsTr("0")
            anchors.centerIn: parent
            color: "white"
        }

    }

    Column{
        Button{
                text: "Call C++ Method"
                onClicked: {
                    Mysignal_handle.cppSlot()
                }
        }

        Text {
            id: mText
            text: qsTr("Default")
        }


    }

}
