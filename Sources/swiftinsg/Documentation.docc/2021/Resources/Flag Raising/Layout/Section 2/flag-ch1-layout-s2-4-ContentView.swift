import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HStack(alignment: .bottom, spacing: -10) {
            Rectangle()
                .frame(width: 10)
            Text("🇸🇬")
                .font(.system(size: 100))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
