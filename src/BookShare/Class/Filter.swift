import SwiftUI

struct Filter: Identifiable {
    var id: UUID = UUID()
    var userId: String
    var name: String
    var author: String
    var location: String
    var isLent: Bool = true
    var isFavorite: Bool = false
    var distance: Double
}
