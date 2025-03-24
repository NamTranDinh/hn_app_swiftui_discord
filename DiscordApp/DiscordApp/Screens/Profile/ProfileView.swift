//
//  ProfileView.swift
//  DiscordApp
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var router: ViewRouter

    var body: some View {
        VStack {
            Text("This is Profile View")
                .font(.largeTitle)
            
            Button(action: {
//                router.currentRoot = .home
            }) {
                Text("Back to Home")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
