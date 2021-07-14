import SwiftUI

struct NewTodoView: View {
    
    @State var todo = ""
    
    var body: some View {
        Form {
            TextField("Task name", text: $todo)
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView()
    }
}
