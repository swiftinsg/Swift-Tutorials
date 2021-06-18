import SwiftUI

struct ScoreView: View {
    
    var score: Int
    var totalQuestions: Int
    
    var body: some View {
        VStack {
            CircularProgressView(progress: CGFloat(score) / CGFloat(totalQuestions))
                .frame(width: 150, height: 150)
            
            Text("You got")
            Text("\(score)/\(totalQuestions)")
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(score: 3, totalQuestions: 5)
    }
}
