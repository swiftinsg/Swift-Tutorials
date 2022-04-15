import PlaygroundSupport
import SwiftUI

struct MyView: View {
    
    var body: some View {
        ZStack {
            Color.blue
            HStack(alignment: .top) {
                Image(uiImage: 🌅)
                VStack {
                    Text("YJ Soon")
                        .bold()
                        .foregroundColor(.red)
                        .background(.green)
                    Text("Swift instructor")
                        .foregroundColor(.yellow)
                        .padding()
                        .background(.purple)
                }
            }
        }
    }
}


PlaygroundPage.current.setLiveView(MyView())
