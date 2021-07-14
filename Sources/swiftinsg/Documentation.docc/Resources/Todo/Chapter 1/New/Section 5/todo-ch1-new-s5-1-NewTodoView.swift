import SwiftUI

struct NewTodoView: View {
    
    @State var todo = ""
    @Binding var todos: [Todo]
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Task name", text: $todo)
                Button("Add Task") {
                    todos.append(Todo(title: todo))
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(todos: .constant([]))
    }
}
