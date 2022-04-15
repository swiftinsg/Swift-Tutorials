import SwiftUI

struct CircularProgressView: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
        }
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView()
    }
}
