import Foundation
import SwiftUI

class CatFactManager: ObservableObject {
    func getCatFact() {
        let apiURL = URL(string: "https://catfact.ninja/fact")!
        let request = URLRequest(url: apiURL)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
        }
    }
}
