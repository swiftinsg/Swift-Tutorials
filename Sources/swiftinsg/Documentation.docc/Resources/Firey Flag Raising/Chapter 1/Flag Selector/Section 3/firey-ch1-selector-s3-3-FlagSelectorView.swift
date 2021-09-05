import SwiftUI

struct FlagSelectorView: View {
    
    var flags: [Flag] {
        let flagDataURL = Bundle.main.url(forResource: "FlagData", withExtension: "json")!
        
        let decoder = JSONDecoder()
        let data = try! Data(contentsOf: flagDataURL)
        
        return try! decoder.decode([Flag].self, from: data)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    
                }
            }
            .navigationTitle("Flag Selector")
        }
    }
}

struct FlagSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        FlagSelectorView()
    }
}
