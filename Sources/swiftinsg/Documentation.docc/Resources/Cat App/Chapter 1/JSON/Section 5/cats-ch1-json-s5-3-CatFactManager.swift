import Foundation
import SwiftUI

class CatFactManager: ObservableObject {
    
    @Published var fact: CatFact?
    
    func getCatFact() {
        let apiURL = URL(string: "https://catfact.ninja/fact")!
        let request = URLRequest(url: apiURL)
        
        fact = nil
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                let decoder = JSONDecoder()
                DispatchQueue.main.async {
                    self.fact = try? decoder.decode(CatFact.self, from: data)
                }
            }
        }.resume()
    }
}
