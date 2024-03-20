//
//  LFTabVIew.swift
//  LF_App
//
//  Created by Taro Altrichter on 20.03.24.
//

import SwiftUI

struct LFTabView: View {
    var body: some View {
        TabView {
            LFFeedView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            LFSearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            LFCreatePostView()
                .tabItem {
                    Image(systemName: "plus")
                }
            
            LFActivityView()
                .tabItem {
                    Image(systemName: "heart.fill")
                }
            
            LFCurrentUserProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }
        .tint(.teal)
    }
}

#Preview {
    LFTabView()
}
