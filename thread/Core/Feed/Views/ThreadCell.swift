//
//  ThreadCell.swift
//  thread
//
//  Created by Maruf Khan on 28/11/23.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment:.top,spacing: 12,
                   content: {
                Image("profile_image").resizable().scaledToFill().frame(width: 40,height: 40).clipShape(Circle(), style: FillStyle())
                //
                VStack(alignment: .leading,spacing: 12,
                       content: {
                    HStack {
                        Text("Md Maruf Khan").font(.footnote).fontWeight(.semibold)
                        Spacer()
                        Text("10m")
                            .font(.caption).foregroundStyle(Color(.systemGray3))
                        Button(action: {}, label: {
                            Image(systemName: "ellipsis").foregroundColor(Color(.darkGray))
                        })
                    }
                    
                    Text("Formula 1 champion").font(.footnote).multilineTextAlignment(.leading)
                    
                    HStack(spacing:16,content: {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }
                        
                    }).padding(.vertical,8).foregroundColor(.black)
                })
            })
            Divider()    }.padding()
    }
}

#Preview {
    ThreadCell()
}
