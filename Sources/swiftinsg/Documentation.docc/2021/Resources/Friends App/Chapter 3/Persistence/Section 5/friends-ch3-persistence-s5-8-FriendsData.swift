import Foundation
import SwiftUI

class FriendsData: ObservableObject {
    @Published var friends: [Friend] = []
    
    let sampleFriends = [Friend(name: "YJ",
                                icon: "zzz",
                                school: "Tinkercademy",
                                slothImage: "sloth3",
                                attack: 10,
                                defence: 5,
                                types: [.ice, .fire]),
                         Friend(name: "Jia Chen",
                                icon: "swift",
                                school: "Ngee Ann Poly",
                                slothImage: "sloth2",
                                attack: 15,
                                defence: 15,
                                types: [.electric, .ice]),
                         Friend(name: "Zerui",
                                icon: "wifi",
                                school: "NUS High",
                                slothImage: "sloth1",
                                attack: 6,
                                defence: 3,
                                types: [.normal, .grass, .fire])]
    
    func getArchiveURL() -> URL {
        let plistName = "friends.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedFriends = try? propertyListEncoder.encode(friends)
        try? encodedFriends?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalFriends: [Friend]!
        
        if let retrievedFriendsData = try? Data(contentsOf: archiveURL),
            let decodedFriends = try? propertyListDecoder.decode(Array<Friend>.self, from: retrievedFriendsData) {
            finalFriends = decodedFriends
        } else {
            finalFriends = sampleFriends
        }
        
        friends = finalFriends
    }
}
