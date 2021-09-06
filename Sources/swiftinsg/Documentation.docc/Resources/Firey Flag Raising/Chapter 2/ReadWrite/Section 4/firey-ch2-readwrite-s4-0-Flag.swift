import Foundation

struct Flag: Identifiable, Decodable, Equatable {
    var id: String { emoji }
    
    var emoji: String
    var description: String
}
