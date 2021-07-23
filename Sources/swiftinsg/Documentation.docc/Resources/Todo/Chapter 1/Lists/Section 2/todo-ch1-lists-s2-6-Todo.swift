import Foundation

struct Todo: Identifiable {
    var id = UUID()
    
    var title: String
    var isCompleted = false
}
