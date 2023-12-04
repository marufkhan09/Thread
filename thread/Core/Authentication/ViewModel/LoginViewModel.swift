//
//  LoginViewModel.swift
//  thread
//
//  Created by Maruf Khan on 3/12/23.
//

import Foundation


class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var isLoading = false // Add a state to track loading status
    
    @MainActor
    func login() {
        isLoading = true // Set isLoading to true before login attempt
        Task {
            do {
                try await AuthService.shared.login(withEmail: email, password: password)
                // Optionally handle successful login here
            } catch {
                print("Login failed with error: \(error.localizedDescription)")
            }
            isLoading = false // Set isLoading to false after login attempt
        }
    }
}

