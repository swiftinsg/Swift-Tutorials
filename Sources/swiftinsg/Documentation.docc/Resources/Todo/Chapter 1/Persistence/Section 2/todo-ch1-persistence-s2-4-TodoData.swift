import Foundation
import SwiftUI

class ModelData: ObservableObject {
    @Published var models: [Model] = []
    
    let sampleModels = []
    
    func getArchiveURL() -> URL {
        let plistName = "models.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedModels = try? propertyListEncoder.encode(models)
        try? encodedModels?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalModels: [Model]!
        
        if let retrievedModelData = try? Data(contentsOf: archiveURL),
            let decodedModels = try? propertyListDecoder.decode([Model].self, from: retrievedModelData) {
            finalModels = decodedModels
        } else {
            finalModels = sampleModels
        }
        
        models = finalModels
    }
}
