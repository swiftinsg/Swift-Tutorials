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
