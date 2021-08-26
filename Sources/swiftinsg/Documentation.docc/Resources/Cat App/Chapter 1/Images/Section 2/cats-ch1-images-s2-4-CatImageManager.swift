import Foundation
import SwiftUI

class CatImageManager: ObservableObject {
    func getCatImage() {
        let apiURL = URL(string: "https://cataas.com/c")!
        let request = URLRequest(url: apiURL)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                
            }
        }.resume()
    }
}
