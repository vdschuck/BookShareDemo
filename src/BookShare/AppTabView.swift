import SwiftUI

struct AppTabView: View {
        var body: some View {
            TabView {
                NavigationView {
                    BookListView()
                        .navigationBarTitle("Livros")
                }.tabItem {
                    Image(systemName: "book")
                    Text("Livros")
                }
                NavigationView {
                    MessageView()
                        .navigationBarTitle("Mensagens")
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

