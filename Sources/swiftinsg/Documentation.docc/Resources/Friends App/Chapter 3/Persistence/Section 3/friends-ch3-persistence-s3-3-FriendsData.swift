import Foundation
import SwiftUI

class FriendsData: ObservableObject {
    @Published var friends: [Friend] = []
    
    func getArchiveURL() -> URL {
        let plistName = "friends.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
}
