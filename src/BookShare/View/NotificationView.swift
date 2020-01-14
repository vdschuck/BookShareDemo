import SwiftUI

struct Notification {
    var title : String
    var description : String
    var isRead = false
}

struct NotificationItem : View {
    @Binding var notification : Notification
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NotificationView: View {
    @State private var notifications : [Notification] = []
    var body: some View {
        List {
            ForEach(notifications.indices) {i in
                NotificationItem(notification: self.$notifications[i])
            }
        }
    }
}
