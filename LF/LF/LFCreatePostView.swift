//
//  LFCreatePostView.swift
//  LF_App
//
//  Created by Taro Altrichter on 20.03.24.
//

import SwiftUI

struct LFCreatePostView: View {
    @State private var caption = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                        .foregroundStyle(Color(.systemGray4))
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("@cutekofi")
                            .fontWeight(.semibold)
                        
                        TextField("What's Up?", text: $caption, axis: .vertical)
                    }
                    
                    Spacer()
                    
                    if !caption.isEmpty {
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                            
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("New Post")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        
                    }
                    .font(.subheadline)
                    .foregroundStyle(.teal)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post") {
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.teal)
                }
            }
        }
    }
}

#Preview {
    LFCreatePostView()
}
