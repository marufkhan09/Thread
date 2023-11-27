//
//  RegistrationView.swift
//  thread
//
//  Created by Maruf Khan on 27/11/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment (\.dismiss) var dismiss
    var body: some View {
        Spacer()
        VStack(content: {
            Image("Threads-Logo").resizable().scaledToFit().frame(width: 200,height: 200).padding()
        })
        VStack{
            //textfields
            TextField("Enter your email", text: $email).modifier(ThreadsTextFieldModifier())
            SecureField("Enter your passwod", text: $password).modifier(ThreadsTextFieldModifier())
            TextField("Enter your full name", text: $fullname).modifier(ThreadsTextFieldModifier())
            TextField("Enter your username", text: $username).modifier(ThreadsTextFieldModifier())
            
        }
        //sign up button
        
        Button(action: {
            dismiss()
        }, label: {
            Text("Sign Up").modifier(ThreadsButtonModifier())
        }).padding(.vertical)
        Spacer()
        Divider()
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
