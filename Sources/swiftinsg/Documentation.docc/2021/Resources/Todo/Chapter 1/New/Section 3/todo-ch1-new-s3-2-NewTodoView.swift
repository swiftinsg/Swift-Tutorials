import SwiftUI

struct NewTodoView: View {
    
    @State var todo = ""
    @Binding var todos: [Todo]
    
    var body: some View {
        Form {
            TextField("Task name", text: $todo)
            Button("Add Task") {
                
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(todos: .constant([]))
    }
}
