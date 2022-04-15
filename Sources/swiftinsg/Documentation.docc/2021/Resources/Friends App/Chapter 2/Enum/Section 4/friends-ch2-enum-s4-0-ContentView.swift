import SwiftUI

struct ContentView: View {
    
    @State var friends = [Friend(name: "YJ",
                                 icon: "zzz",
                                 school: "Tinkercademy",
                                 slothImage: "sloth3",
                                 attack: 10,
                                 defence: 5,
                                 types: [.ice, .fire]),
                          Friend(name: "Jia Chen",
                                 icon: "swift",
                                 school: "Ngee Ann Poly",
                                 slothImage: "sloth2",
                                 attack: 15,
                                 defence: 15,
                                 types: [.electric, .ice]),
                          Friend(name: "Zerui",
                                 icon: "wifi",
                                 school: "NUS High",
                                 slothImage: "sloth1",
                                 attack: 6,
                                 defence: 3,
                                 types: [.normal, .grass, .fire])]
    
    var body: some View {
        NavigationView {
            List (0..<friends.count) { index in
                NavigationLink(destination: FriendDetailView(friend: $friends[index])) {
                    Image(systemName: friends[index].icon)
                    
                    VStack(alignment: .leading) {
                        Text(friends[index].name)
                            .bold()
                        HStack {
                            Text(friends[index].school)
                        }
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
