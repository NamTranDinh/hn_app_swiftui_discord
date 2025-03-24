//
//  ViewRouter.swift
//  swift-ui-base
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import Foundation
import Combine

enum Screens {
    case tabView
}

class ViewRouter: ObservableObject {
    @Published var currentRoot: Screens =  .tabView
    
    static let shared = ViewRouter()
    
    fileprivate init() { }
}
