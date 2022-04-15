import SwiftUI

struct ContentView: View {
    
    @Binding var friends: [Friend]
    
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
