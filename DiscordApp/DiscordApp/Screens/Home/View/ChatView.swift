//
//  ChatView.swift
//  DiscordApp
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

struct ChatView: View {
    @State private var messages: [String] = []
    @State private var newMessage: String = ""
    let item: String
    var body: some View {
        VStack {
            // Message List
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(messages, id: \.self) { message in
                        Text(message)
                            .padding()
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .padding(.vertical, 2)
                    }
                }
            }
            
            // Input Field
            HStack {
                TextField("Type a message...", text: $newMessage)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Button(action: sendMessage) {
                    Text("Send")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding(.trailing)
            }
            .padding()
        }
        .onDrag {
            // Create an NSItemProvider with the item's data
            let data = NSItemProvider(object: item as NSString)
            print(data)
            return data
        }
        .navigationTitle("Chat")
    }
    
    private func sendMessage() {
        guard !newMessage.isEmpty else { return }
        messages.append(newMessage)
        newMessage = ""
    }
}
#Preview {
    ChatView(item: "hello")
}
