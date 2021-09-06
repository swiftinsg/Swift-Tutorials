import SwiftUI

struct FlagRaisingView: View {
    
    @Binding var offset: Double
    @Binding var flag: Flag
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: -10) {
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 15)
                
                Text(flag.emoji)
                    .font(.system(size: 100))
                    .offset(x: 0, y: CGFloat(offset))
            }
            
            Button("Raise Flag") {
                offset -= 10
            }
            .padding()
            
            Button("Reset") {
                offset = 20
            }
            .padding()
        }
    }
}

struct FlagRaisingView_Previews: PreviewProvider {
    static var previews: some View {
        FlagRaisingView(offset: .constant(20), flag: .constant(Flag(emoji: "🇸🇬", description: "Singapore")))
    }
}
