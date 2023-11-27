//
//  FeedView.swift
//  thread
//
//  Created by Maruf Khan on 28/11/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        NavigationStack {
            ScrollView(showsIndicators: false, content: {
                LazyVStack(content: {
                    ForEach(1...10, id: \.self) { thread in
                        ThreadCell()
                    }
                })
            })
            .refreshable {
                print("Debug: Refresh Threads")
            }
            .navigationTitle("Threads").navigationBarTitleDisplayMode(.inline)
        }
        .toolbar{
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {}, label: {
                    Image(systemName: "arrow.counterclockwise").foregroundColor(.black)
                })
            }
        }
    }
}

//#Preview {
//    FeedView()
//}

struct FeedView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FeedView()
        }
    }
}
