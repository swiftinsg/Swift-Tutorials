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
    
    var body: some View {
        VStack {
            Text("Question Title")
                .padding()
            
            HStack {
                VStack {
                    Button("Option 1") {
                    }
                    Button("Option 2") {
                    }
                }
                .padding()
                
                VStack {
                    Button("Option 3") {
                    }
                    Button("Option 4") {
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
