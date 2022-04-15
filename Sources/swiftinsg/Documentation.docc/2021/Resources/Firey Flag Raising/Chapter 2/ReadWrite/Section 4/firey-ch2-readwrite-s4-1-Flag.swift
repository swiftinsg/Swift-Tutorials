import Foundation

struct Flag: Identifiable, Codable, Equatable {
    var id: String { emoji }
    
    var emoji: String
    var description: String
}
