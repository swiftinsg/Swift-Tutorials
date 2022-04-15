import Foundation

struct Todo: Identifiable, Equatable, Codable {
    var id = UUID()
    
    var title: String
    var isCompleted = false
}
