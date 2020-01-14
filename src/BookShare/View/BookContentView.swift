import SwiftUI

struct BookContentView: View {
    
    @Binding var book: Book
    
    var body: some View {
        HStack {
            Image(self.book.image.first ?? "")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(10)
                .padding(.horizontal, 10)
            
            VStack {
                Text(self.book.title)
                    .bold()
                    .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment:.leading)
                    .font(.system(size: 18))
                
                Text(self.book.author)
                    .foregroundColor(.gray)
                    .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                    .font(.system(size: 12))
                
            }.frame(width: nil, height: 80, alignment: .center)
            
            VStack {
                Button(action: {
                    print("App Aberto")
                })
                {
                    Text("DETAILS")
                        .bold()
                        .foregroundColor(.blue)
                        .font(.system(size: 16))
                        .frame(width: 60, height: 30, alignment: .center)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(20)
                }.buttonStyle(PlainButtonStyle())
            }.padding(.leading, 25)
        }
    }
}
