//
//  LFTabVIew.swift
//  LF_App
//
//  Created by Taro Altrichter on 20.03.24.
//

import SwiftUI

struct LFTabView: View {
    @State private var selectedTab = 0
    @State private var showCreatePostView = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            LFFeedView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            LFSearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            
            Text("")
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
            
            LFActivityView()
                .tabItem {
                    Image(systemName: "heart.fill")
                }
                .onAppear { selectedTab = 3 }
                .tag(3)
            
            LFCurrentUserProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
                .onAppear { selectedTab = 4 }
                .tag(4)
        }
        .onChange(of: selectedTab, perform: { newValue in
            showCreatePostView = selectedTab == 2
        })
        .sheet(isPresented: $showCreatePostView, onDismiss: {
            selectedTab = 0
        }, content: {
            LFCreatePostView()
        })
        .tint(.teal)
    }
}

#Preview {
    LFTabView()
}
