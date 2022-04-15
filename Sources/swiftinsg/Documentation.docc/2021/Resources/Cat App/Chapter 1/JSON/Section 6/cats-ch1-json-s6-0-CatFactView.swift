import SwiftUI

struct CatFactView: View {
    
    @ObservedObject var catFactManager = CatFactManager()
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                catFactManager.getCatFact()
            }
    }
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}
