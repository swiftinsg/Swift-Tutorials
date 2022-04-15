import SwiftUI

struct FlagSelectorView: View {
    
    var flags: [Flag] {
        let flagDataURL = Bundle.main.url(forResource: "FlagData", withExtension: "json")!
        
        let decoder = JSONDecoder()
        let data = try! Data(contentsOf: flagDataURL)
    }
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct FlagSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        FlagSelectorView()
    }
}
