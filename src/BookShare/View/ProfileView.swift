import SwiftUI

struct AvatarView: View {
    var body: some View {
        VStack {
            Spacer()//.frame(height: 100)
            Image(systemName: "person.crop.circle")
                .resizable()
                .scaledToFit()
                .opacity(0.6)
                .frame(width: UIScreen.main.bounds.width * 0.4, height: 180, alignment: .center)
            Button(action: {}){
                Text("Alterar")
                    .foregroundColor(.blue)
                    .font(.system(size: 14))
            }.buttonStyle(PlainButtonStyle())
        }.frame(width: UIScreen.main.bounds.width)
    }
}

struct ProfileView: View {
    
    @State private var options = ["Conta", "Meus Favoritos", "Ajuda", "Sair"]
    
    init() {
        //UITableView.appearance().separatorColor = .clear
    }
    
    var body: some View {
        List {
            AvatarView()
            ForEach(options.indices) { i in
                NavigationLink(destination: ProfileView()) {
                    Text(self.options[i])
                }
            }
        }.listStyle(GroupedListStyle())
    }
}
