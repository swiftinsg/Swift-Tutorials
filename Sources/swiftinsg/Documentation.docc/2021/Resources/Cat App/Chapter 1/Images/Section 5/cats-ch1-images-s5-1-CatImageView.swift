import SwiftUI

struct CatImageView: View {
    
    @ObservedObject var catImageManager = CatImageManager()
    
    var body: some View {
        VStack {
            if let image = catImageManager.image {
                Image(uiImage: image)
            }
        }
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
