//
//  ContentView.swift
//  MensajesUno
//
//  Created by Sinuhé Ruedas on 08/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ChatsViewModel()
    
    // Adding the Search Bar
    @State private var query = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.getSortedFilteredChats(query: query)) { chat in
                    
                    NavigationLink(destination: {
                        ChatView(chat: chat)
                            .environmentObject(viewModel)
                    }) {
                        ChatRow(chat:chat)
                    }
                    
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button(action: {
                            viewModel.markAsUnread(!chat.hasUnreadMessage, chat: chat)
                        }) {
                            if chat.hasUnreadMessage {
                                Label("Read", systemImage: "text.bubble")
                            } else {
                                Label("Unread", systemImage: "circle.fill")
                            }
                        }
                        .tint(.blue)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .searchable(text: $query)
            .navigationTitle("Chat")
            .navigationBarItems(trailing: Button(action: {}) {
                Image(systemName: "square.and.pencil")
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
