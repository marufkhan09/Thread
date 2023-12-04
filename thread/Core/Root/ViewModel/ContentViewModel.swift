//
//  ContentViewModel.swift
//  thread
//
//  Created by Maruf Khan on 30/11/23.
//

import Foundation
import Combine
import FirebaseAuth


class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    init() {
        setupSuscriber()
    }
    
    private func setupSuscriber() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancellables)
    }
    
  
}


