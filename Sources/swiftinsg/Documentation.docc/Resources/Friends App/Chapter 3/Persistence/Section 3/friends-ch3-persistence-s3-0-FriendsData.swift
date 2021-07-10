import Foundation
import SwiftUI

class FriendsData: ObservableObject {
    @Published var friends: [Friend] = []
}
