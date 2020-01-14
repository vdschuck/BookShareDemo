import SwiftUI

struct Book: Identifiable {
    var id: UUID = UUID()
    var title: String
    var image: [String]
    var author: String
    var owner: String
    var details: String
    var loanPeriod: Int
    var isLent = false
    var location: String
    var distance: String
}
