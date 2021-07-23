import Foundation

struct Todo: Identifiable, Equatable {
    var id = UUID()
    
    var title: String
    var isCompleted = false
}
