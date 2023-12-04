//
//  AuthService.swift
//  thread
//
//  Created by Maruf Khan on 29/11/23.
//

import Foundation
import FirebaseAuth


class AuthService {
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email: String,password : String) async throws {
        do {
            let result  = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: Created user \(result.user.uid)")
        } catch {
            print("Failed to create user with error::\(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(withEmail email: String,password : String,fullName: String, userName: String) async throws {
        do {
            let result  = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: Created user \(result.user.uid)")
        } catch {
            print("Failed to create user with error::\(error.localizedDescription)")
        }
    }
    
    func signOut(){
        try? Auth.auth().signOut() //this signs out on backend
        self.userSession = nil //this removes session locally and updates routing
    }
}
