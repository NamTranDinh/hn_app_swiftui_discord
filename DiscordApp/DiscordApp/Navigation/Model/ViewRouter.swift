//
//  ViewRouter.swift
//  swift-ui-base
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import Foundation
import Combine

enum Tabs {
    case home
    case search
    case profile
}

class ViewRouter: ObservableObject {
    @Published var currentRoot: Tabs = SessionManager.isValidSession ? .profile : .home
    
    static let shared = ViewRouter()
    
    fileprivate init() { }
}
