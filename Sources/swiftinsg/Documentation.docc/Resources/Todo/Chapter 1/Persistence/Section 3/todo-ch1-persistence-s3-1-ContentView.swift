import SwiftUI

struct ContentView: View {
    
    @Binding var todos: [Todo]
    @State var isSheetPresented = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(todos) { todo in
                    Button {
                        let todoIndex = todos.firstIndex(of: todo)!
                        todos[todoIndex].isCompleted.toggle()
                    } label: {
                        HStack {
                            Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                                .foregroundColor(.black)
                        }
                    }
                }
                .onDelete { indexSet in
                    todos.remove(atOffsets: indexSet)
                }
                .onMove { indices, newOffset in
                    todos.move(fromOffsets: indices, toOffset: newOffset)
                }
            }
            .navigationTitle("Todos")
            .navigationBarItems(leading: EditButton(),
                                trailing: Button {
                                    isSheetPresented = true
                                } label: {
                                    Image(systemName: "plus")
                                })
        }
        .sheet(isPresented: $isSheetPresented) {
            NewTodoView(todos: $todos)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
