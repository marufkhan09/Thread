//
//  ThreadsButtonModifier.swift
//  thread
//
//  Created by Maruf Khan on 27/11/23.
//

import SwiftUI

struct ThreadsButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.subheadline).fontWeight(.semibold).foregroundStyle(.white).frame(width: 352,height: 44).background(.black).cornerRadius(8)
    }
}


