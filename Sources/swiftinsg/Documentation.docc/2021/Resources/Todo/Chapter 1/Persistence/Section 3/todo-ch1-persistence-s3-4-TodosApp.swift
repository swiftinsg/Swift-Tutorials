import SwiftUI

@main
struct TodosApp: App {
    
    @ObservedObject var todoData = TodoData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(todos: $todoData.todos)
        }
    }
}
