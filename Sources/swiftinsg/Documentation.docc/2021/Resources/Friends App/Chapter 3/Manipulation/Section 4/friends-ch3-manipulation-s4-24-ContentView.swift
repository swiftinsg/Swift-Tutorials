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
    
    @State var isSheetPresented = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(friends) { friend in
                    let friendIndex = friends.firstIndex(of: friend)!
                    
                    NavigationLink(destination: FriendDetailView(friend: $friends[friendIndex])) {
                        Image(systemName: friend.icon)
                        
                        VStack(alignment: .leading) {
                            Text(friend.name)
                                .bold()
                            HStack {
                                Text(friend.school)
                                
                                Spacer()
                                
                                ForEach(friend.types, id: \.rawValue) { type in
                                    Image(systemName: type.getSymbolName())
                                }
                            }
                        }
                    }
                }.onDelete { offsets in
                    friends.remove(atOffsets: offsets)
                }.onMove { source, destination in
                    friends.move(fromOffsets: source, toOffset: destination)
                }
            }
            .navigationTitle("Friends")
            .navigationBarItems(leading: EditButton(),
                                trailing: Button(action: {
                isSheetPresented = true
            }, label: {
                Image(systemName: "plus")
            }))
        }.sheet(isPresented: $isSheetPresented) {
            NewFriendView(friends: $friends)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
