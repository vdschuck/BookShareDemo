import SwiftUI

struct BookDetailsView: View {
    var book: Book
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image("book/book_default")
                    .resizable()
                    .scaledToFit()
                        .frame(width: nil, height: nil, alignment: .leading)
                        .padding(.trailing)
                    VStack{
                        Text(book.title)
                            .font(.title)
                            .bold()
                        Text(book.author)
                            .font(.system(size: 18))
                    }.frame(width: nil, height: nil)
                    Spacer()
                }.frame(height: 80)
                VStack {
                    Divider()
                    HStack {
                        Text(book.distance)
                        Spacer()
                        Text(book.location)
                        Spacer()
                        Text(String(book.loanPeriod))
                    }
                    Divider()
                }.frame(height: 45)
                Spacer()
                HStack{
                    Text("Fotos")
                       .font(.title)
                        .frame(alignment: .leading)
                    Spacer()
                }
                ScrollView(.horizontal, content: {
                   HStack(spacing: 10) {
                      Image("screenshot1")
                      .resizable()
                      .scaledToFit()
                      .cornerRadius(30)
                      Image("screenshot2")
                      .resizable()
                      .scaledToFit()
                      .cornerRadius(30)
                   }
                   .padding(.leading, 10)
                })
                HStack{
                    Text("Características")
                       .font(.title)
                        .frame(alignment: .leading)
                    Spacer()
                }
                Text(book.details)
                Spacer()
            }
        }
    }
}
