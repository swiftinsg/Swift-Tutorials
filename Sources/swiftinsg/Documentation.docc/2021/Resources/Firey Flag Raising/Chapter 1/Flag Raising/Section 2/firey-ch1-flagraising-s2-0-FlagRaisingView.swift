import SwiftUI

struct FlagRaisingView: View {
    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: -10) {
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 15)
                
                Text("🇸🇬")
                    .font(.system(size: 100))
            }
            
            Button("Raise Flag") {
                
            }
            .padding()
            
            Button("Reset") {
                
            }
            .padding()
        }
    }
}

struct FlagRaisingView_Previews: PreviewProvider {
    static var previews: some View {
        FlagRaisingView()
    }
}
