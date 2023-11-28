//
//  RegistrationView.swift
//  thread
//
//  Created by Maruf Khan on 27/11/23.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()

    @Environment (\.dismiss) var dismiss
    var body: some View {
        Spacer()
        VStack(content: {
            Image("Threads-Logo").resizable().scaledToFit().frame(width: 200,height: 200).padding()
        })
        VStack{
            //textfields
            TextField("Enter your email", text: $viewModel.email).modifier(ThreadsTextFieldModifier())
            SecureField("Enter your passwod", text: $viewModel.password).modifier(ThreadsTextFieldModifier())
            TextField("Enter your full name", text: $viewModel.fullname).modifier(ThreadsTextFieldModifier())
            TextField("Enter your username", text: $viewModel.username).modifier(ThreadsTextFieldModifier())
            
        }
        //sign up button
        
        Button(action: {
            Task {
                try await viewModel.createUser()
            }
        }, label: {
            Text("Sign Up").modifier(ThreadsButtonModifier())
        }).padding(.vertical)
        Spacer()
        Divider()
        Button(action: {
            dismiss()
        }, label: {
            HStack(spacing:4,
                content: {
                Text("Don't have an account?")
                Text("Sign in")
                    .fontWeight(.semibold)
            })
            .font(.footnote).foregroundColor(.black)
        }).padding(.vertical)
    }
}

#Preview {
    RegistrationView()
}
