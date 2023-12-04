//
//  ProfileView.swift
//  thread
//
//  Created by Maruf Khan on 28/11/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter : ProfileThreadFilter = .threads
    @Namespace var animation
    
    private var filterBarWidth : CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        
        return UIScreen.main.bounds.width / count - 20
    }
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators:false) {
                //bio and stats
                VStack(spacing:20) {
                    HStack(alignment:.top, content: {
                        VStack(alignment:.leading,spacing: 12,
                               content: {
                            VStack(alignment:.leading,spacing: 4,
                                   content: {
                                //fullname and username
                                Text("Md Maruf Khan").font(.title2).fontWeight(.semibold)
                                
                                Text("maruf_09").font(.subheadline)
                            })
                            
                            Text("Software engineer- mobile application").font(.footnote)
                            
                            Text("30 followers").font(.caption).font(.caption).foregroundStyle(.gray)
                        })
                        
                    Spacer()
                        CircularProfileImageView()
                    })
                    
                    Button(action: {}, label: {
                        Text("Follow").font(.subheadline).fontWeight(.semibold).foregroundStyle(.white).frame(width: 352,height: 32).background(.black).cornerRadius(4)
                    })
                    
                    //user content list view
                    
                    VStack {
                        HStack(content: {
                            ForEach(ProfileThreadFilter.allCases) { filter in
                                VStack {
                                    Text(filter.title).font(.subheadline).fontWeight(selectedFilter == filter ? .semibold : .regular)
                                    
                                    if(selectedFilter == filter) {
                                        Rectangle().foregroundStyle(.black).frame(width: filterBarWidth,height:1).matchedGeometryEffect(id: "item", in: animation)
                                    }else {
                                        Rectangle().foregroundStyle(.clear).frame(width: filterBarWidth,height:1)
                                    }
                                }.onTapGesture {
                                    withAnimation(.spring) {
                                        selectedFilter = filter
                                    }
                                }
                            }
                        })
                    }
                }
                LazyVStack {
                    ForEach(0...10,id:\.self){ thread in
                        ThreadCell()
                        
                    }
                }
            }.toolbar(
                content: {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            AuthService.shared.signOut()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }

                    }
            })
            .padding(.horizontal).padding(.vertical)
        }
        }
}

#Preview {
    ProfileView()
}
