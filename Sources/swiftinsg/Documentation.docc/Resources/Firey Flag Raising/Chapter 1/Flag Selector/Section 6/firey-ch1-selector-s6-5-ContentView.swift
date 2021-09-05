import SwiftUI

struct ContentView: View {
    
    @State var flag = Flag(emoji: "🇸🇬", description: "Singapore")
    
    var body: some View {
        TabView {
            FlagRaisingView(flag: $flag)
                .tabItem {
                    Label("Flag Raising", systemImage: "arrow.up")
                }
            FlagSelectorView(selectedFlag: $flag)
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
