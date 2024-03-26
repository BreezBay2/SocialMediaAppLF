//
//  LFSearchView.swift
//  LF_App
//
//  Created by Taro Altrichter on 20.03.24.
//

import SwiftUI

struct LFSearchView: View {
    @StateObject var viewModel = LFSearchViewModel()
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            UserCell(user: user)
                            
                            Divider()
                        }
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
