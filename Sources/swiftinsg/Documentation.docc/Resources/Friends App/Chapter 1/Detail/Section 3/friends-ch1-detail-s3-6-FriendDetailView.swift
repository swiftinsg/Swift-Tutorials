import SwiftUI

struct FriendDetailView: View {
    
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
                .frame(width: 250, height: 250)
                .mask(Circle())
                .overlay(
                    Circle()
                        .stroke(lineWidth: 8)
                        .foregroundColor(.white)
                )
                .offset(x: 0, y: -250 / 2)
            
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
