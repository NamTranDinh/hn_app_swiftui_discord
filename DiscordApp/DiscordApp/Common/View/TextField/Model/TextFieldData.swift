//
//  TextFieldData.swift
//  swift-ui-base
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import Foundation

final class TextFieldData: ObservableObject {
  var value: String = "" {
    didSet {
      validate()
    }
  }
  
  var validationType: ValidationType
  var errorMessage: String
  var title: String
  var isSecure = false

  var isValid = true
  
  var isEmpty: Bool {
    return value.isEmpty
  }
  
  init(title: String,
       value: String = "",
       validationType: ValidationType = .none,
       isSecure: Bool = false,
       errorMessage: String = "") {
    self.title = title
    self.value = value
    self.validationType = validationType
    self.errorMessage = errorMessage
    self.isSecure = isSecure
    
    validate()
  }
  
  func validate() {
    isValid = value.isValid(type: validationType)
  }
}
