//
//  SessionDataManager.swift
//  swift-ui-base
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import UIKit

class SessionManager: NSObject {
  
  static private let userDefaultSessionKey = "swift-ui-base-session"
  
  static var currentSession: Session? {
    get {
      if
        let data = UserDefaults.standard.data(forKey: userDefaultSessionKey),
        let session = try? JSONDecoder().decode(Session.self, from: data)
      {
        return session
      }
      return nil
    }
    
    set {
      let session = try? JSONEncoder().encode(newValue)
      UserDefaults.standard.set(session, forKey: userDefaultSessionKey)
    }
  }
  
  class func deleteSession() {
    UserDefaults.standard.removeObject(forKey: userDefaultSessionKey)
  }
  
  static var isValidSession: Bool {
    if
      let session = currentSession,
      let uid = session.uid,
      let token = session.accessToken,
      let client = session.client
    {
      return !uid.isEmpty && !token.isEmpty && !client.isEmpty
    }
    
    return false
  }
}
