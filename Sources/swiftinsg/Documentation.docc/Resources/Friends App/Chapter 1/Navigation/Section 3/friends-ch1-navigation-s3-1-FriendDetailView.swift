import SwiftUI

struct FriendDetailView: View {
    
    var friend: Friend
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: Friend(name: "Jia Chen",
                                        icon: "pc",
                                        school: "Tinkercademy",
                                        slothImage: "sloth1"))
    }
}
