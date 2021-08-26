import SwiftUI

struct CatImageView: View {
    
    @ObservedObject var catImageManager = CatImageManager()
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                catImageManager.getCatImage()
            }
    }
}

struct CatImageView_Previews: PreviewProvider {
    static var previews: some View {
        CatImageView()
    }
}
