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
    @MainActor
    func createUser() async throws{
        print("DEBUG:: Create user here...")
        try await AuthService.shared.createUser(withEmail: email, password: password, fullName: fullname, userName: username)
    }
}
