import SwiftUI

struct FlagRaisingView: View {
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 15)
            
            Text("🇸🇬")
                .font(.system(size: 100))
        }
    }
}

struct FlagRaisingView_Previews: PreviewProvider {
    static var previews: some View {
        FlagRaisingView()
    }
}
