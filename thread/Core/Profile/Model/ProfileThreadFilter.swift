//
//  ProfileThreadFilter.swift
//  thread
//
//  Created by Maruf Khan on 28/11/23.
//

import Foundation


enum ProfileThreadFilter : Int, CaseIterable,Identifiable {
    var id: Int {return self.rawValue }
    
    case threads
    case replies
    
    var title : String {
        switch self {
        case .threads : return "Threads"
        case .replies : return "Replies"
        }
    }
}
