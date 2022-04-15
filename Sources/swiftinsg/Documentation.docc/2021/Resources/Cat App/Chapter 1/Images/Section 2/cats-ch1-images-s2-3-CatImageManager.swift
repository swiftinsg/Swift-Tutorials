import Foundation
import SwiftUI

class CatImageManager: ObservableObject {
    func getCatImage() {
        let apiURL = URL(string: "https://cataas.com/c")!
        let request = URLRequest(url: apiURL)
        
    }
}
