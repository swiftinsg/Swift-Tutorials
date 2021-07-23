import Foundation
import SwiftUI

class TodoData: ObservableObject {
    @Published var todos: [Todo] = []
    
    let sampleTodos = [Todo(title: "go and sleep"), Todo(title: "get allergies from cat")]
    
    func getArchiveURL() -> URL {
        let plistName = "todos.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedTodos = try? propertyListEncoder.encode(todos)
        try? encodedTodos?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalTodos: [Todo]!
        
        if let retrievedTodoData = try? Data(contentsOf: archiveURL),
            let decodedTodos = try? propertyListDecoder.decode([Todo].self, from: retrievedTodoData) {
            finalTodos = decodedTodos
        } else {
            finalTodos = sampleTodos
        }
        
        todos = finalTodos
    }
}
