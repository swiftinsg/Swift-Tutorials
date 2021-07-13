import SwiftUI

struct ContentView: View {
    
    @State var todos = [Todo(title: "Feed the cat"),
                        Todo(title: "Play with cat"),
                        Todo(title: "Get allergies"),
                        Todo(title: "Run away from cat"),
                        Todo(title: "Get a new cat")]
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
