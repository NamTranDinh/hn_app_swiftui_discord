//
//  TitleModifier.swift
//  DiscordApp
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

struct MainTitle: ViewModifier {
  func body(content: Content) -> some View {
    content
      .padding()
      .foregroundColor(.appDarkGray)
      .font(.largeTitle)
  }
}

struct MainTitle_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      Text("Hello, World!")
        .previewLayout(.sizeThatFits)
      
      Text("Hello, World!")
        .modifier(MainTitle())
        .previewLayout(.sizeThatFits)
    }
  }
}
