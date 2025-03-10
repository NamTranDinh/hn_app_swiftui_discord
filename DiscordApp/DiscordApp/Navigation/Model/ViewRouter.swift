//
//  ViewRouter.swift
//  swift-ui-base
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import Foundation
import Combine

enum Roots {
  case home
  case profile
}

class ViewRouter: ObservableObject {
  @Published var currentRoot: Roots = SessionManager.isValidSession ? .profile : .home
  
  static let shared = ViewRouter()
  
  fileprivate init() { }
}
