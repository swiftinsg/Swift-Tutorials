import SwiftUI
import Firebase

@main
struct Firey_Flag_RaisingApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
