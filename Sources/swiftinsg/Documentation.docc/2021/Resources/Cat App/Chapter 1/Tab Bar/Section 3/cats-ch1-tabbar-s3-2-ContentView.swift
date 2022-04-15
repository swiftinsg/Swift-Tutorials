import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatFactView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
