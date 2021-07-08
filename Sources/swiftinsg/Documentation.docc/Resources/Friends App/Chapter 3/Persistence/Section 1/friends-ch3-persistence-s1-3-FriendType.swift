import Foundation

enum FriendType: String, Codable {
    case normal = "normal"
    case fire = "fire"
    case water = "water"
    case grass = "grass"
    case electric = "electric"
    case ice = "ice"
    
    func getSymbolName() -> String {
        switch self {
            case .normal:
                return "face.smiling"
            case .fire:
                return "flame"
            case .water:
                return "drop"
            case .grass:
                return "leaf"
            case .electric:
                return "bolt"
            case .ice:
                return "snowflake"
        }
    }
}
