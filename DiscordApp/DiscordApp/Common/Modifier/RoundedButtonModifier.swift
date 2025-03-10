//
//  RoundedButtonModifier.swift
//  DiscordApp
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

struct MainRoundedButton: ViewModifier {
  
  var backgroundColor: Color = .blue
  var radius: CGFloat = 8
  
  func body(content: Content) -> some View {
    content
      .frame(width: 300, height: 50)
      .font(.headline)
      .foregroundColor(.white)
      .background(backgroundColor)
      .cornerRadius(radius)
  }
}

struct MainRoundedButton_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      Text("Hello, World!")
        .padding()
        .previewLayout(.sizeThatFits)
      
      Text("Hello, World!")
        .modifier(MainRoundedButton())
        .padding()
        .previewLayout(.sizeThatFits)
    }
  }
}
