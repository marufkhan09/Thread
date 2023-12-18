//
//  ProfileViewModel.swift
//  thread
//
//  Created by Maruf Khan on 6/12/23.
//

import Foundation
import Combine

class ProfileViewModel : ObservableObject {
    @Published var currentUser : User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSuscriber()
    }
    
    private func setupSuscriber(){
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("DEBUG:: user in view model from combine is \(user)")
        }.store(in: &cancellables)
    }
}


