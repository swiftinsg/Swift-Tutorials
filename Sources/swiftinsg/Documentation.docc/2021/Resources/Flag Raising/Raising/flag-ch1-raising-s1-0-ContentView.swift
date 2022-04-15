import SwiftUI

struct ContentView: View {
    
    @State var offset: CGFloat = 20
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: -10) {
                Rectangle()
                    .frame(width: 10)
                Text("🇸🇬")
                    .font(.system(size: 100))
            }
            
            Button("Majulah!") {
                offset -= 10
            }
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
