import SwiftUI

struct FriendDetailView: View {
    
    let profilePicSize: CGFloat = 250
    
    var friend: Friend
    
    var body: some View {
        VStack(spacing: 0) {
            Image(friend.slothImage)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
            
            Image(friend.name)
                .resizable()
                .scaledToFill()
                .frame(width: profilePicSize, height: profilePicSize)
                .mask(Circle())
                .overlay(
                    Circle()
                        .stroke(lineWidth: 8)
                        .foregroundColor(.white)
                )
                
            Spacer()
        }
        .navigationTitle(friend.name)
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
