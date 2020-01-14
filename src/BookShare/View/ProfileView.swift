import SwiftUI

struct AvatarView: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 100)
            Image(systemName: "person.crop.circle")
                .resizable()
                .scaledToFit()
                .opacity(0.6)
                .frame(width: UIScreen.main.bounds.width * 0.4, alignment: .center)
            Button(action: {}){
                Text("Alterar")
                    .foregroundColor(.blue)
                    .font(.system(size: 10))
            }.buttonStyle(PlainButtonStyle())
        }//.background(Color(UIColor.lightGray))
            .frame(width: UIScreen.main.bounds.width)
    }
}

struct ProfileView: View {
    
    @State private var options = ["Opção 1", "Opção 2", "Opção 3"]
    
    var body: some View {
        ScrollView {
            VStack {
                AvatarView()
                List {
                    ForEach(options.indices) { i in
                        NavigationLink(destination: ProfileView()) {
                            Text(self.options[i])
                        }
                    }
                }
            }
        }
    }
}
