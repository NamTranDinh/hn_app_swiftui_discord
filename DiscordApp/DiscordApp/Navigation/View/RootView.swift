//
//  NavigationView.swift
//  swift-ui-base
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var router: ViewRouter
    
    var body: some View {
        VStack {
            containedView()
                .id(router.currentRoot)
                .transition(.slide).animation(.linear(duration: 0.2), value:  router.currentRoot)
        }
    }
    
    func containedView() -> AnyView {
        switch router.currentRoot {
        case .profile:
            return AnyView(ProfileView())
        default:
            return AnyView(HomeView())
        }
    }
}
