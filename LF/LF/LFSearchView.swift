//
//  LFSearchView.swift
//  LF_App
//
//  Created by Taro Altrichter on 20.03.24.
//

import SwiftUI

struct LFSearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0 ..< 10) { user in
                        Text("1")
                        Divider()
                    }
                    .padding(.vertical, 3)
                }
            }
        }
        .navigationTitle("Search")
        .searchable(text: $searchText, prompt: "Search Users")
    }
}

#Preview {
    LFSearchView()
}
