import SwiftUI

struct Filters: View {
    
    @Binding var filter: Filter
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack {
            Text("Filtros")
                .font(.title)
                .bold()
                .padding(.top, 20)
            
            Form {
                Section {
                    TextField("Nome:", text: $filter.name)
                    TextField("Autor:", text: $filter.name)
                    TextField("Cidade:", text: $filter.name)
                    
                    HStack {
                        Text("Distância")
                            .foregroundColor(Color.gray.opacity(0.5))
                            .frame(width: UIScreen.main.bounds.width / 2.0, height: nil, alignment: .leading)
                        
                        Slider(value: $filter.distance, in: 1.0...100.0, step: 0.1)
                            .frame(width: 150, height: 10, alignment: .leading)
                    }

                    Toggle(isOn: self.$filter.isFavorite) {
                        Text("Pesquisar nos favoritos")
                            .foregroundColor(Color.gray.opacity(0.5))
                    }

                    Toggle(isOn: self.$filter.isLent) {
                         Text("Livros disponíveis")
                            .foregroundColor(Color.gray.opacity(0.5))
                    }

                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    })
                    {
                        Text("Pesquisar")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                            .frame(width: 100, height: 30, alignment: .center)
                            .background(Color.blue)
                            .cornerRadius(20)

                    }.buttonStyle(PlainButtonStyle())
                     .frame(width: (UIScreen.main.bounds.width / 1.0) - 50, height: nil, alignment: .center)
                     .padding([.top, .bottom], 15)
                }
            }
        }
    }
}
