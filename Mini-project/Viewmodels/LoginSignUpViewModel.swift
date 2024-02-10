import Foundation
import SwiftUI
import Combine
import Firebase
import GoogleSignIn

class LoginSignUpViewModel: ObservableObject {
    @Published var phoneNumber = ""
    @Published var selectedCountryCode = "+91"
    @Published var isLoggedIn = false
    @Published var isRedirecting = false
    @Published var redirectToMainView = false

    let countryCodes = ["+1", "+44", "+91", "+81"]

    func signIn() {
        print("phone number \(selectedCountryCode + phoneNumber)")
        redirectToMainView = true
    }

    func signInWithApple() {
        // Implement Apple sign-in logic here
    }

    func signInWithGoogle() {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config

        GIDSignIn.sharedInstance.signIn(withPresenting: Application_utility.rootViewController) { user, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            guard let user = user?.user, let idToken = user.idToken else { return }

            let accessToken = user.accessToken
            let credential = GoogleAuthProvider.credential(withIDToken: idToken.tokenString, accessToken: accessToken.tokenString)

            Auth.auth().signIn(with: credential) { res, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                guard let user = res?.user else { return }
                print(user.email as Any)

                self.isLoggedIn = true
                self.isRedirecting = true
                self.redirectToMainView = true
            }
        }

        print("Google")
    }

    func logout() {
        isLoggedIn = false
        isRedirecting = false
        redirectToMainView = false
    }
}
