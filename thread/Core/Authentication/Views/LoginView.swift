//
//  LoginView.swift
//  thread
//
//  Created by Maruf Khan on 27/11/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        NavigationStack {
            Spacer()
            VStack(content: {
                Image("Threads-Logo").resizable().scaledToFit().frame(width: 200,height: 200).padding()
            })
            VStack{
                TextField("Enter your email", text: $viewModel.email).modifier(ThreadsTextFieldModifier()).autocapitalization(.none)
                SecureField("Enter your passwod", text: $viewModel.password).modifier(ThreadsTextFieldModifier())
            }
            NavigationLink {
                Text("Forgot Password")
            } label: {
                Text("Forgot Password").font(.footnote).fontWeight(.semibold).padding(.vertical).padding(.trailing,28).foregroundColor(.black).frame(maxWidth: .infinity,alignment: .trailing)
            }
            
//            Button(action: {
//                viewModel.login()
//            }) {
//                if viewModel.isLoading {
//                    ProgressView()
//                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
//                        .foregroundStyle(.white).frame(width: 352,height: 44).background(.black).cornerRadius(8) // Adjust size as needed
//                } else {
//                    Text("Login").modifier(ThreadsButtonModifier())
//                }
//            }
            CustomLoadingButton(action: {
                viewModel.login()
            }, buttonText: "Login", isLoading: viewModel.isLoading)
            Spacer()
            Divider()
            NavigationLink {
                RegistrationView().navigationBarBackButtonHidden(true)
            } label: {
                HStack(spacing:4,
                       content: {
                    Text("Don't have an account?")
                    Text("Sign up")
                        .fontWeight(.semibold)
                })
                .font(.footnote).foregroundColor(.black)
            }.padding(.vertical,16)
            
        }
    }
}

#Preview {
    LoginView()
}








