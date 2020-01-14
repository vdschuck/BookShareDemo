import SwiftUI

struct Notification {
    var title : String
    var description : String
    var isRead = false
}

struct NotificationItem : View {
    @Binding var notification : Notification
    var body: some View {
        HStack {
            //            Image("icon")
            //                .resizable()
            //                .frame(width: 80, height: 80, alignment: .center)
            //                .cornerRadius(20)
            //            Spacer()
            VStack {
                Text(notification.title)
                    .bold()
                    .font(.system(size: 18))
                    .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                Spacer().frame(height:20)
                Text(notification.description)
                    .foregroundColor(.gray)
                    .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
            }.frame(alignment: .center)
            Spacer()
            Image(systemName: "circle.fill")
                .foregroundColor(.blue)
        }.padding(20)
            .onTapGesture {
                if self.notification.isRead {
                    self.notification.isRead = false
                }
        }
    }
}

struct NotificationView: View {
    @State private var notifications : [Notification] = [Notification(title: "Teste", description: "voce recebeu um teste")]
    var body: some View {
        ScrollView {
            VStack {
                ForEach(notifications.indices) {i in
                    NotificationItem(notification: self.$notifications[i])
                    Divider()
                }
            }
        }
    }
}
