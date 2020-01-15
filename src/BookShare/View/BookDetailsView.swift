import SwiftUI

struct BookDetailsView: View {
    var book: Book
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(self.book.image.isEmpty ? "book/book_default" : "book/\(self.book.image[0])")
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 120, height: 170, alignment: .center)
                    VStack{
                        Text(book.title)
                            .font(.title)
                            .bold()
                        Text(book.author)
                            .font(.system(size: 18))
                    }.frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                }
                Divider()
                HStack {
                    Text(book.distance)
                        .frame(width: UIScreen.main.bounds.width/3.0, height: nil, alignment: .center)
                    Text(book.location)
                        .frame(width: UIScreen.main.bounds.width/3.0, height: nil, alignment: .center)
                    Text("\(self.book.loanPeriod) dias")
                        .frame(width: UIScreen.main.bounds.width/3.0, height: nil, alignment: .center)
                }
                Divider()
                HStack{
                    Text("Fotos")
                        .font(.title)
                        .padding(20)
                        .frame(width: UIScreen.main.bounds.width/1.0, height: nil, alignment: .leading)
                }
                ScrollView(.horizontal, content: {
                    HStack(spacing: 10) {
                        ForEach(book.image.indices) { item in
                            Image("book/\(self.book.image[item])")
                                .resizable()
                                .cornerRadius(30)
                                .frame(width: UIScreen.main.bounds.width/2.0, height: UIScreen.main.bounds.height/2.5, alignment: .center)
                        }
                    }.padding(.leading, 10)
                })
                HStack{
                    Text("Características")
                       .font(.title)
                       .padding(20)
                       .frame(width: UIScreen.main.bounds.width/1.0, height: nil, alignment: .leading)
                }
                Text(book.details)
            }
        }
    }
}
