//
//  RegistrationViewModel.swift
//  thread
//
//  Created by Maruf Khan on 29/11/23.
//

import Foundation


class RegistrationViewModel: ObservableObject {
    @Published  var email = ""
    @Published  var password = ""
    @Published  var fullname = ""
    @Published  var username = ""
    @Published var isLoading  = false
    
    
    @MainActor
    func createUser(){
        isLoading = true // Set isLoading to true before login attempt
        Task {
            do {
                print("DEBUG:: Create user here...")
                try await AuthService.shared.createUser(withEmail: email, password: password, fullName: fullname, userName: username)
               
            } catch {
                print("Registration failed with error: \(error.localizedDescription)")
            }
            isLoading = false // Set isLoading to false after login attempt
        }
    }
}
