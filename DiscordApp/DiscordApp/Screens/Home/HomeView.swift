//
//  HomeView.swift
//  DiscordApp
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: ViewRouter

    var body: some View {
        GeometryReader { geometry in
            HStack (alignment: .top) {
                ChannelList(geometry: geometry)
                
                Spacer()
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.sideBarColor)
        }
    }
}

#Preview {
    HomeView()
}

struct ChannelList: View {
    
    var geometry: GeometryProxy
    
    var body: some View {
        VStack(alignment: .center) {
            CircleView()
            
            Text("Hello, World!")
                .foregroundColor(.white)
        }.frame(
            width: 80,
            height: geometry.size.height
        )
        .background(Color.primary.opacity(0.9))
    }
}

struct CircleView: View {
    var body: some View {
        Circle()
            .fill(Color.blue)
            .frame(width: 65, height: 65)
            .overlay(
                Text("Hello")
                    .foregroundColor(.white)
                    .font(.title)
            )
    }
}
