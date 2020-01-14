import SwiftUI

struct Contact {
    var name : String
    var avatarPath : String
}

struct Chat {
    var title : String
    var lastMessage : String
    var contact : Contact
    var isRead = false
}

struct ChatItem : View {
    @Binding var chat : Chat
    var body: some View {
        HStack {
            Image(chat.contact.avatarPath)
                .resizable()
                .scaledToFit()
                .background(Color(UIColor.lightGray))
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(40)
            Spacer()
            VStack {
                Text(chat.title)
                    .bold()
                    .font(.system(size: 18))
                    .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                Spacer().frame(height:20)
                Text(chat.lastMessage)
                    .foregroundColor(.gray)
                    .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
            }.frame(alignment: .center)
            Spacer()
            Image(systemName: "circle.fill")
                .foregroundColor(.blue)
        }.padding(20)
            .onTapGesture {
                if self.chat.isRead {
                    self.chat.isRead = false
                }
        }
    }
}

struct MessageView: View {
    
    @State private var chats : [Chat] = [Chat(title: "Teste", lastMessage: "voce recebeu um teste", contact: Contact(name: "Carlos" , avatarPath: "icon"))]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(chats.indices) {i in
                    ChatItem(chat: self.$chats[i])
                    Divider()
                }
            }
        }
    }
}
