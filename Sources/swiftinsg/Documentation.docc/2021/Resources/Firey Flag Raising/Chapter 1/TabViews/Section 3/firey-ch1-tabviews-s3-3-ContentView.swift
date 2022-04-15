import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FlagRaisingView()
                .tabItem {
                    Label("Flag Raising", systemImage: "arrow.up")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
