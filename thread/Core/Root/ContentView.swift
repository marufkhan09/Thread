//
//  ContentView.swift
//  thread
//
//  Created by Maruf Khan on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        
        Group {
            if viewModel.userSession != nil {
                ThreadsTabView()
            }else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
