import SwiftUI

struct BookContentView: View {
    
    var book: Book
    
    var body: some View {
        VStack {
            Image(self.book.image.isEmpty ? "book/book_default" : self.book.image[0])
                .resizable()
                .renderingMode(.original)
                .frame(width: 140, height: 140, alignment: .center)
                .cornerRadius(10)
                .padding(.horizontal, 15)
            
            VStack {
                Text(self.book.title)
                    .bold()
                    .frame(width: UIScreen.main.bounds.width/1.0, height: nil, alignment: .center)
                    .font(.system(size: 20))
                
                Text(self.book.author)
                    .foregroundColor(.gray)
                    .frame(width: UIScreen.main.bounds.width/1.0, height: nil, alignment: .center)
                    .font(.system(size: 14))
                
                Text("\(self.book.loanPeriod) dias")
                    .foregroundColor(.gray)
                    .frame(width: UIScreen.main.bounds.width/1.0, height: nil, alignment: .center)
                    .font(.system(size: 12))
                
                Text("\(self.book.distance) - \(self.book.location)")
                    .foregroundColor(.gray)
                    .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .center)
                    .font(.system(size: 10))
               
            }.frame(width: nil, height: 80, alignment: .center)
        }
    }
}
