import SwiftUI

struct ContentView: View {
    
    var questions = [Question(title: "What day is it?",
                              option1: "Monday",
                              option2: "Saturday",
                              option3: "Wednesday",
                              option4: "Friday"),
                     Question(title: "What framework are we using?",
                              option1: "UIKit",
                              option2: "SwiftUI",
                              option3: "React Native",
                              option4: "Flutter"),
                     Question(title: "Which company created Swift?",
                              option1: "Orange",
                              option2: "Apple",
                              option3: "Google",
                              option4: "Tinkercademy")]
    
    @State private var currentQuestion = 0
    
    @State private var isAlertPresented = false
    @State private var isCorrect = false
    
    var body: some View {
        VStack {
            Text(questions[currentQuestion].title)
                .padding()
            
            HStack {
                VStack {
                    Button(questions[currentQuestion].option1) {
                    }
                    Button(questions[currentQuestion].option2) {
                    }
                }
                .padding()
                
                VStack {
                    Button(questions[currentQuestion].option3) {
                    }
                    Button(questions[currentQuestion].option4) {
                    }
                }
                .padding()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
