import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            TabView {
                TodoListView()
                    .tabItem { VStack {
                        Image(systemName: "house").font(.largeTitle)
                        Text("Home").font(.headline)
                    } }

                ProfileView()
                    .tabItem { VStack {
                        Image(systemName: "person").font(.largeTitle)
                        Text("Profile").font(.headline)
                    } }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
