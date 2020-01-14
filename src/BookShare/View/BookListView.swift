import SwiftUI

struct BookListView: View {
    
    @State var books: [Book] = [
        Book(title: "Teste", image: [], author: "Charles", owner: "Vinicius", details: "Número de páginas do livros é de 500.", loanPeriod: 20, location: "Porto Alegre/RS", distance: "5 km"),
        Book(title: "Teste", image: [], author: "Charles", owner: "Vinicius", details: "Número de páginas do livros é de 500.", loanPeriod: 20, location: "Porto Alegre/RS", distance: "5 km"),
        Book(title: "Teste", image: [], author: "Charles", owner: "Vinicius", details: "Número de páginas do livros é de 500.", loanPeriod: 20, location: "Porto Alegre/RS", distance: "5 km")
    ]
    
    var body: some View {
        QGrid(books, columns: 2) { item in
            BookContentView(book: item)
        }
    }
}
