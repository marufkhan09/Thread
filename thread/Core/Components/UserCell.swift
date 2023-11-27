//
//  UserCell.swift
//  thread
//
//  Created by Maruf Khan on 28/11/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(content: {
            CircularProfileImageView()
            //vstack
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Md Maruf Khan").fontWeight(.semibold)
                Text("Formula 1 champion").multilineTextAlignment(.leading)
            }.font(.footnote)
            
            Spacer()
            Text("Follow").font(.subheadline).fontWeight(.semibold).frame(width: 100, height: 32).overlay {
                RoundedRectangle(cornerRadius: 5).stroke(Color(.systemGray4),lineWidth: 1)
            }
        }).padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
