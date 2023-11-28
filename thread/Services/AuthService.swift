//
//  AuthService.swift
//  thread
//
//  Created by Maruf Khan on 29/11/23.
//

import Foundation
import Firebase


class AuthService {
    
    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email : String,password : String) async throws {
      
    }
    
    @MainActor
    func createUser(withEmail email: String,password : String,fullName: String, userName: String) async throws {
        do {
            let result  = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Created user \(result.user.uid)")
        } catch {
            print("Failed to create user with error::\(error.localizedDescription)")
        }
    }
}
