import SwiftUI

struct NewFriendView: View {
    
    @State var friend = Friend(name: "",
                               icon: "triangle",
                               school: "",
                               slothImage: "sloth3",
                               attack: 0,
                               defence: 0,
                               types: [.normal])
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Information")) {
                    TextField("Name", text: $friend.name)
                    TextField("School", text: $friend.school)
                    
                    HStack {
                        Image(systemName: friend.icon)
                        TextField("Icon", text: $friend.icon)
                            .autocapitalization(.none)
                    }
                }
            }
            .navigationTitle("New Friend")
        }
    }
}

struct NewFriendView_Previews: PreviewProvider {
    static var previews: some View {
        NewFriendView()
    }
}
