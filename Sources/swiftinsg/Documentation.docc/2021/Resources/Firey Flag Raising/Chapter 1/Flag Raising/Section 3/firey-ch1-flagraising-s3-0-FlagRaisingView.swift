import SwiftUI

struct FlagRaisingView: View {
    
    @State var offset: CGFloat = 20
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: -10) {
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 15)
                
                Text("🇸🇬")
                    .font(.system(size: 100))
                    .offset(x: 0, y: offset)
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
        FlagRaisingView()
    }
}
