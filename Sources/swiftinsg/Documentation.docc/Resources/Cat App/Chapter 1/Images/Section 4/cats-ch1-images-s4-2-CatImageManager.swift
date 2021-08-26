import Foundation
import SwiftUI

class CatImageManager: ObservableObject {
    
    @Published var image: UIImage?
    
    func getCatImage() {
        let apiURL = URL(string: "https://cataas.com/c")!
        let request = URLRequest(url: apiURL)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
            }
        }.resume()
    }
}
