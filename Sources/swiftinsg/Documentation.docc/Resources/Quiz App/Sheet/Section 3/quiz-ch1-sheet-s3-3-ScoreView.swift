import SwiftUI

struct ScoreView: View {
    var body: some View {
        VStack {
            Text("You got")
            Text("2/3")
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
