import SwiftUI
import FirebaseAuth

struct ProfileView: View {
    @State var name = "Saurabh Rajopadhye"
    @State var contact = 1234567891
    @State var appleid = "ABCD@123"
    @State private var hovering = false
    @Environment(\.dismiss) private var dismiss

    
    var body: some View {
        VStack(spacing: 30.0) {

            
            VStack(spacing: 90.0) {
                Text("Profile")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .shadow(radius: 10)
                
                VStack {
                    Text("Hello,")
                        .font(.title)
                        .bold()
                    Text(name)
                        .font(.title)
                        .bold()
                }
                
                VStack(spacing: 20.0) {
                    HStack {
                        Spacer()
                        Image(systemName: "person.crop.circle.fill").font(.largeTitle).foregroundColor(.black)
                        Text("Contact: " + "+91-" + String(contact))
                            .font(.title2)
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Image(systemName: "envelope")
                            .font(.title)
                        Text("AppleID: " + appleid)
                            .font(.title2)
                        Spacer()
                    }
                }
                
                
                Button(action: {
                    
                    
                    logout()
                }) {
                    
                    Text("Logout")
                        .foregroundColor(.red)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.red, lineWidth: 2)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(Color.red.opacity(0.1))
                                        .opacity(.init(self.hovering ? 1 : 0))
                                )
                        )
                        .shadow(color: Color.red.opacity(0.5), radius: 5, x: 0, y: 2)
                }
                .onHover { hovering in
                    self.hovering = hovering
                }
            }
            .padding(.all)
        }
        .padding()
    }
    
    func logout() {
        do {
            try Auth.auth().signOut()
            
            dismiss.self()
            // Redirect to LoginSignUpView after logging out
            // You may need to use a navigation link or presentation mode to navigate to the LoginSignUpView
            
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
        
        print("Logged out")
    }
    
   
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
