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
                        .foregroundColor(.red)
                    Text("Swift instructor")
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}


PlaygroundPage.current.setLiveView(MyView())
