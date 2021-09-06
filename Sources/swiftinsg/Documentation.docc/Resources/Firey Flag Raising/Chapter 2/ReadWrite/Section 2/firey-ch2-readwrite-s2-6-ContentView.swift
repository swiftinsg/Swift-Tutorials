import SwiftUI

struct ContentView: View {
    
    @ObservedObject var flagDataManager = FlagDataManager()
    
    var body: some View {
        TabView {
            FlagRaisingView(flag: $flagDataManager.flag)
                .tabItem {
                    Label("Flag Raising", systemImage: "arrow.up")
                }
            FlagSelectorView(selectedFlag: $flagDataManager.flag)
                .tabItem {
                    Label("Flag Selector", systemImage: "flag.badge.ellipsis")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
