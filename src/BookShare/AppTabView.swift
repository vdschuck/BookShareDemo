import SwiftUI

struct AppTabView: View {
        var body: some View {
            TabView {
                NavigationView {
                    BookListView()
                        .navigationBarTitle("Livros")
                        .navigationBarItems(trailing:
                            Button(action: { print("Filtrar") }) {
                                Image(systemName: "line.horizontal.3.decrease")
                        })
                }.tabItem {
                    Image(systemName: "book")
                    Text("Livros")
                }
                NavigationView {
                    MessageView()
                        .navigationBarTitle("Mensagens")
                        .navigationBarItems(trailing:
                            Button(action: { print("Nova mensagem") }) {
                                Image(systemName: "square.and.pencil")
                        })
                }.tabItem {
                    Image(systemName: "message")
                    Text("Mensagens")
                }
                NavigationView {
                    LoanView()
                        .navigationBarTitle("Adicionar Livro")
                }.tabItem {
                    Image(systemName: "plus")
                    Text("Adicionar")
                }
                NavigationView {
                    NotificationView()
                        .navigationBarTitle("Notificações")
                }.tabItem {
                    Image(systemName: "bell")
                    Text("Notificações")
                }
                NavigationView {
                    ProfileView()
                        .navigationBarTitle("Perfil")
                }.tabItem {
                    Image(systemName: "person.circle")
                    Text("Perfil")
                }
            }
        }
    }

