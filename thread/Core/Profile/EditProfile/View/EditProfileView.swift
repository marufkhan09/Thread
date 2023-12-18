//
//  EditProfileView.swift
//  thread
//
//  Created by Maruf Khan on 28/11/23.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var privateProfile = false
    var body: some View {
        NavigationStack {
            ZStack(content: {
                Color(.systemGroupedBackground).edgesIgnoringSafeArea([.bottom,.horizontal])
                
                VStack(content: {
                    //name and profile image
                    HStack(
                        content: {
                            VStack(alignment: .leading,
                                   content: {
                                Text("Name").fontWeight(.semibold)
                                
                                Text("Md maruf khan")
                            })
                            Spacer()
                            //profile image
                            
                            CircularProfileImageView()
                        })
                    
                    Divider()
                    
                    // bio field
                    
                    VStack(
                        alignment:.leading,
                        content: {
                            Text("Bio").fontWeight(.semibold)
                            TextField("Enter your bio", text: $bio,axis: .vertical)
                        })
                    Divider()
                    //Link
                    VStack(
                        alignment:.leading,
                        content: {
                            Text("Link").fontWeight(.semibold)
                            TextField("Add link...", text: $link,axis: .vertical)
                        })
                    Divider()
                    
                    Toggle("Private Profile", isOn: $privateProfile)
                }).font(.footnote).padding().background(.white).cornerRadius(10).overlay(content: {
                    RoundedRectangle(cornerRadius: 10).stroke(Color(.systemGray4),lineWidth:1)
                })
                    .padding()
                
            }).navigationTitle("Edit Profile").navigationBarTitleDisplayMode(.inline)
                .toolbar(
                    content: {
                        //Cancel button
                        ToolbarItem(placement: .navigation) {
                            Button(action: {}, label: {
                                Text("Cancel")
                            }).font(.subheadline).foregroundColor(.black)
                        }
                        //Done button
                        ToolbarItem {
                            Button(action: {}, label: {
                                Text("Done")
                            }).font(.subheadline).fontWeight(.semibold).foregroundColor(.black)
                        }
                        
                    })
        }
    }
}

#Preview {
    EditProfileView()
}
