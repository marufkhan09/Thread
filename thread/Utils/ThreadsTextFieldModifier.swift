//
//  ThreadsTextFieldModifier.swift
//  thread
//
//  Created by Maruf Khan on 27/11/23.
//

import Foundation
import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.subheadline).padding(12).background(Color(.systemGray6)).cornerRadius(8).padding(.horizontal,24)
    }
}
