import PlaygroundSupport
import SwiftUI

struct MyView: View {
    
    var body: some View {
        HStack {
            Image(uiImage: 🌅)
            VStack {
                Text("YJ Soon")
                Text("Swift instructor")
            }
        }
    }
}


PlaygroundPage.current.setLiveView(MyView())
