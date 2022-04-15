import SwiftUI

struct CatImageView: View {
    
    @ObservedObject var catImageManager = CatImageManager()
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct CatImageView_Previews: PreviewProvider {
    static var previews: some View {
        CatImageView()
    }
}
