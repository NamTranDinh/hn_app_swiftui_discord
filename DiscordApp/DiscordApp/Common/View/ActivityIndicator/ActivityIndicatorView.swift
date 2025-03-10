//
//  ActivityIndicatorView.swift
//  swift-ui-base
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
  
  @Binding var isAnimating: Bool
  let style: UIActivityIndicatorView.Style
  
  func makeUIView(
    context: UIViewRepresentableContext<ActivityIndicatorView>
  ) -> UIActivityIndicatorView {
    return UIActivityIndicatorView(style: style)
  }
  
  func updateUIView(
    _ uiView: UIActivityIndicatorView,
    context: UIViewRepresentableContext<ActivityIndicatorView>
  ) {
    isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
  }
}
