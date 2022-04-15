import SwiftUI

struct ContentView: View {
    
    @ObservedObject var flagDataManager = FlagDataManager()
    
    var body: some View {
        TabView {
            FlagRaisingView(offset: $flagDataManager.flagOffset, flag: $flagDataManager.flag)
                .tabItem {
                    Label("Flag Raising", systemImage: "arrow.up")
                }
            FlagSelectorView(selectedFlag: $flagDataManager.flag)
                .tabItem {
                    Label("Flag Selector", systemImage: "flag.badge.ellipsis")
                }
        }
        .onChange(of: flagDataManager.flag) { _ in
            flagDataManager.saveFlag()
        }
        .onChange(of: flagDataManager.flagOffset) { _ in
            flagDataManager.saveFlagOffset()
        }
        .onAppear {
            flagDataManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
