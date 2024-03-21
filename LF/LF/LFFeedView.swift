//
//  LFFeedView.swift
//  LF_App
//
//  Created by Taro Altrichter on 20.03.24.
//

import SwiftUI

struct LFFeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0 ..< 10) { post in
                        Text("Example Post")
                        Divider()
                    }
                }
            }
            .refreshable { }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(.teal)
                }
            }
        }
    }
}

#Preview {
    LFFeedView()
}
