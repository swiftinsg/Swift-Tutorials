import PlaygroundSupport
import SwiftUI

struct MyView: View {
    
    var body: some View {
        ZStack {
            Color.blue
            HStack(alignment: .top) {
                Image(uiImage: 🌅)
                    .resizable()
                VStack {
                    Text("YJ Soon")
                        .bold()
                        .italic()
                        .font(.system(size: 100))
                        .foregroundColor(.red)
                        .background(.green)
                    Text("Swift instructor")
                        .font(.system(size: 60))
                        .foregroundColor(.yellow)
                        .padding()
                        .background(.purple)
                }
            }
        }
    }
}


PlaygroundPage.current.setLiveView(MyView())
