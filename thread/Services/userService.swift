//
//  userService.swift
//  thread
//
//  Created by Maruf Khan on 5/12/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift
class UserService {
    @Published var currentUser : User?
    
    static let shared = UserService()
    
    
    init() {
        Task{
            try await fetchCurrentUser()
        }
    }
    
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user  = try snapshot.data(as: User.self)
        self.currentUser = user
        print("Debug:: USER is \(user)")
    }
    
//    static func fetchUsers() async throws ->[User]{
//        guard let uid = Auth.auth().
//    }
    
    func resetUser() {
        self.currentUser = nil
    }
    
}
