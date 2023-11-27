//
//  CircularProfileImageView.swift
//  thread
//
//  Created by Maruf Khan on 28/11/23.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("profile_image").resizable().scaledToFill().frame(width: 40,height: 40).clipShape(Circle(), style: FillStyle())
    }
}

#Preview {
    CircularProfileImageView()
}
