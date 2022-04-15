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
                    Text("Swift instructor")
                }
            }
        }
    }
}


PlaygroundPage.current.setLiveView(MyView())
