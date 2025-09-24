import org.kde.kirigami as Kirigami
import QtQuick.Controls as Controls
import QtQuick.Layouts as Layouts
import QtQuick as QtQuick

Kirigami.Page {
    Kirigami.FormLayout {
        id: form
        anchors.fill: parent

        Controls.TextField {
            id: usernameField
            Kirigami.FormData.label: i18nc("@label:textbox", "Username:")
        }

        Controls.TextField {
            id: passwordField
            Kirigami.FormData.label: i18nc("@label:textbox", "Password:")
            echoMode: Controls.TextField.Password
        }

        Kirigami.Separator {
            Kirigami.FormData.isSection: true
        }

        Controls.CheckBox {
            Kirigami.FormData.label: i18nc("@label:checkbox", "Remember Login?")
        }

        Controls.Button {
            text: i18nc("@action:login", "Login")
            anchors.right: form.right
            anchors.left: form.left
            anchors.bottom: form.bottom
        }
    }
}
