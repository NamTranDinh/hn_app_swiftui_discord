//
//  NavigationView.swift
//  swift-ui-base
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var router: ViewRouter // Access the shared ViewRouter
    
    var body: some View {
        VStack {
            containedView()
                .id(
                    router.currentRoot
                )
                .transition(.slideInFromRight)
                .animation(
                    .linear(duration: 0.2),
                    value: router.currentRoot
                )
        }
    }
    
    // Function to determine which view to show based on the current screen
    func containedView() -> AnyView {
        switch router.currentRoot {
//        case .profile:
//            return AnyView(
//                ProfileView()
//            )
        default:
            return AnyView(AppTabView())
        }
    }
}

extension AnyTransition {
    static var slideInFromRight: AnyTransition {
        AnyTransition.move(edge: .trailing).combined(with: .opacity)
    }
    
    static var slideOutToLeft: AnyTransition {
        AnyTransition.move(edge: .leading).combined(with: .opacity)
    }
}
