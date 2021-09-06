import FirebaseDatabase
import FirebaseDatabaseSwift
import Foundation
import SwiftUI

class FlagDataManager: ObservableObject {
    
    let ref = Database.database().reference()
    
    @Published var flag = Flag(emoji: "🇸🇬", description: "Singapore")
    @Published var flagOffset = 20.0
    
    func fetchData() {
        ref.observe(.value) { snapshot in
            let flagSnapshot = snapshot.childSnapshot(forPath: "flag")
            
            if let flag = try? flagSnapshot.data(as: Flag.self) {
                self.flag = flag
            }
        }
    }
    
    func saveFlag() {
        try? ref.child("flag").setValue(from: flag)
    }
    
    func saveFlagOffset() {
        try? ref.child("flagOffset").setValue(from: flagOffset)
    }
}
