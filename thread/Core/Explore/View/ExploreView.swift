//
//  ExploreView.swift
//  thread
//
//  Created by Maruf Khan on 28/11/23.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(content: {
                    ForEach(1...10, id: \.self) { count in
                        VStack {
                            UserCell()
                            Divider()
                        }.padding(.vertical,4)
                    }
                    
                })
            }
            
            .searchable(text: $searchText,prompt: "Search")
            .navigationTitle("Search").navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ExploreView()
}


