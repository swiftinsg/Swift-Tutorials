import SwiftUI

@main
struct FriendsApp: App {
    
    @ObservedObject var friendsData = FriendsData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(friends: $friendsData.friends)
                .onAppear {
                    friendsData.load()
                }
        }
    }
}
