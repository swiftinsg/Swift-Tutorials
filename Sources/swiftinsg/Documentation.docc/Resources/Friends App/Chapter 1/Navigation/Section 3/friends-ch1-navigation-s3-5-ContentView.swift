import SwiftUI

struct ContentView: View {
    
    var friends = [Friend(name: "YJ",
                          icon: "zzz",
                          school: "Tinkercademy",
                          slothImage: "sloth3"),
                   Friend(name: "Jia Chen",
                          icon: "swift",
                          school: "Ngee Ann Poly",
                          slothImage: "sloth2"),
                   Friend(name: "Zerui",
                          icon: "wifi",
                          school: "NUS High",
                          slothImage: "sloth1")]
    
    var body: some View {
        NavigationView {
            List(friends) { friend in
                NavigationLink(destination: FriendDetailView(friend: friend)) { 
                    Image(systemName: friend.icon)
                    
                    VStack(alignment: .leading) {
                        Text(friend.name)
                            .bold()
                        Text(friend.school)
                    }
                }
            }
            .navigationTitle("Friends")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
