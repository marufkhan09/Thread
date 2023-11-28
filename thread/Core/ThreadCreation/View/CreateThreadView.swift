//
//  CreateThreadView.swift
//  thread
//
//  Created by Maruf Khan on 28/11/23.
//

import SwiftUI

struct CreateThreadView: View {
    
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack(content: {
                HStack(alignment: .top,
                    content: {
                    CircularProfileImageView()
                    VStack(alignment: .leading,spacing:4, content: {
                        Text("Md Maruf Khan").fontWeight(.semibold)
                        
                        TextField("Start a thread...", text: $caption,axis: .vertical)
                        
                    }).font(.footnote)
                    Spacer()
                    if(!caption.isEmpty){
                        Button(action: {
                            caption = ""
                        }, label: {
                            Image(systemName: "xmark").resizable().frame(width: 12,height: 12).foregroundColor(.gray)
                        })
                    }
                })
                Spacer()
            }).padding()
            .navigationTitle("New Thread").navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem (placement: .navigation){
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Cancel")
                    })
                }
                ToolbarItem {
                    Button(action: {
                        
                    }, label: {
                        Text("Post")
                    }).opacity(caption.isEmpty ? 0.5 : 1).disabled(caption.isEmpty)
                }
            }).font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    CreateThreadView()
}
