//
//  HomeView.swift
//  DiscordApp
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: ViewRouter // Access the shared ViewRouter

    var body: some View {
        VStack {
            Text("This is Home View")
                .font(.largeTitle)
            
            Button(action: {
                // Change the currentRoot to profile when the button is pressed
//                router.currentRoot = .profile
            }) {
                Text("Go to Profile")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
