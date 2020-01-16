import SwiftUI

struct LoanView: View {
    @State var author: String = ""
    @State var loanTime: String = ""
    @State var city: String = ""
    @State var address: String = ""
    @State var tags: String = ""
    @State var isbn: String = ""
    
    var body: some View {
        VStack {
            VStack(spacing: 30) {
                
                FieldComponent(icon: "book", title: "Título")
                
                FieldComponent(icon: "person.crop.square", title: "Autor")
                
                FieldComponent(icon: "clock", title: "Tempo de empréstimo")
                
                FieldComponent(icon: "map", title: "Cidade")
                
                FieldComponent(icon: "house", title: "Endereço")
                
                FieldComponent(icon: "tag", title: "Tags")
                
            }
            .padding(.top, 20)
            
            Spacer()
            
            HStack {
                ImageComponent(title: "Foto de Capa")
                    .frame(width: UIScreen.main.bounds.width/3.3)
                
                ImageComponent(title: "Código de barras")
                    .frame(width: UIScreen.main.bounds.width/3.3)
                
                ImageComponent(title: "Contracapa")
                    .frame(width: UIScreen.main.bounds.width/3.3)
            }
            
            Spacer()
            
            Button(action: {}) {
                Text("Concluir")
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 100, height: 30, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(20)
            }
        }
        .padding(20)
    }
}
