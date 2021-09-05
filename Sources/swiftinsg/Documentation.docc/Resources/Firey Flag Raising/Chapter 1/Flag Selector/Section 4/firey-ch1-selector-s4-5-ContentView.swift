import SwiftUI

struct ContentView: View {
    
    @State var flag = Flag(emoji: "🇸🇬", description: "Singapore")
    
    var body: some View {
        TabView {
            FlagRaisingView()
                .tabItem {
                    Label("Flag Raising", systemImage: "arrow.up")
                }
            FlagSelectorView()
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
