import Foundation

struct Friend: Identifiable {
    var id = UUID()
    
    var name: String
    var icon: String
    var school: String
    
    var slothImage: String
    
    var attack: Double
    var defence: Double
    
    var types: [FriendType]
}
