//
//  CustomLoadingButton.swift
//  thread
//
//  Created by Maruf Khan on 3/12/23.
//

import SwiftUI

struct CustomLoadingButton: View {
    let action: () -> Void
    let buttonText: String
    let isLoading: Bool
    
    var body: some View {
        Button(action: action) {
            if isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                    .foregroundStyle(.white).frame(width: 352,height: 44).background(.black).cornerRadius(8)
            } else {
                Text(buttonText).modifier(ThreadsButtonModifier())
            }
        }
    }
}



struct CustomLoadingButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomLoadingButton(action: {}, buttonText: "Login", isLoading: false)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
