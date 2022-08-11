import SwiftUI

struct ContentView: View {
    
    var questions = [Question(title: "What day is it?",
                              option1: "Monday",
                              option2: "Friday",
                              option3: "Wednesday",
                              option4: "Saturday",
                              correctOption: 4),
                     Question(title: "What framework are we using?",
                              option1: "UIKit",
                              option2: "SwiftUI",
                              option3: "React Native",
                              option4: "Flutter",
                              correctOption: 2),
                     Question(title: "Which company created Swift?",
                              option1: "Apple",
                              option2: "Orange",
                              option3: "Google",
                              option4: "Tinkercademy",
                              correctOption: 1)]
    
    @State private var currentQuestion = 0
    
    @State private var isAlertPresented = false
    @State private var isCorrect = false
    
    @State private var correctAnswers = 0
    @State private var isModalPresented = false
    
    var body: some View {
        VStack {
            ProgressView(value: Double(currentQuestion),
                         total: Double(questions.count))
                .padding()
            
            Text(questions[currentQuestion].title)
                .padding()
            
            HStack {
                VStack {
                    Button {
                        didTapOption(optionNumber: 1)
                    } label: {
                        Image(systemName: "triangle.fill")
                        Text(questions[currentQuestion].option1)
                    }
                    Button {
                        didTapOption(optionNumber: 2)
                    } label: {
                        Image(systemName: "circle.fill")
                        Text(questions[currentQuestion].option2)
                    }
                }
                .padding()
                VStack {
                    Button {
                        didTapOption(optionNumber: 3)
                    } label: {
                        Image(systemName: "diamond.fill")
                        Text(questions[currentQuestion].option3)
                    }
                    Button {
                        didTapOption(optionNumber: 4)
                    } label: {
                        Image(systemName: "square.fill")
                        Text(questions[currentQuestion].option4)
                    }
                }
                .padding()
            }
            .padding()
        }
        .alert(isCorrect ? "Correct" : "Wrong", isPresented: $isAlertPresented) {
            Button("OK") {
                currentQuestion += 1
                
                if currentQuestion == questions.count {
                    isModalPresented = true
                    currentQuestion = 0
                }
            }
        } message: {
            Text(isCorrect ? "Congrats, you are kinda smart." : "How can you be getting this wrong?!")
        }
        .sheet(isPresented: $isModalPresented,
               onDismiss: {
            correctAnswers = 0
        },
               content: {
            ScoreView(score: correctAnswers,
                      totalQuestions: questions.count)
        })
    }
    
    func didTapOption(optionNumber: Int) {
        if optionNumber == questions[currentQuestion].correctOption {
            print("Correct!")
            isCorrect = true
            correctAnswers += 1
        } else {
            print("Wrong!")
            isCorrect = false
        }
        isAlertPresented = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
