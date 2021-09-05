import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FlagRaisingView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
