import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Question Title")
                .padding()
            
            HStack {
                VStack {
                    Button("Option 1") {
                    }
                    Button("Option 2") {
                    }
                }
                .padding()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
