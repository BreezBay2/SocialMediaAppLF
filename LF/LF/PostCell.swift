//
//  PostCell.swift
//  LF_App
//
//  Created by Taro Altrichter on 23.03.24.
//

import SwiftUI

struct PostCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(Color(.systemGray4))
                    .padding(.leading, 10)
                
                VStack(alignment: .leading, spacing: 6) {
                    HStack {
                        Text("Kofi")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("@cutekofi")
                            .font(.footnote)
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray2))
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                        .padding(.trailing, 10)
                    }
                    
                    Text("This is a test post. Lorem Ipsum yadiyadiyada. Yeet Yoink.")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    Image("post")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(5)
                        .padding(.vertical, 5)
                        .padding(.trailing, 10)
                    
                    HStack(spacing: 15) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundStyle(.black)
                }
            }
        }
        .padding(.bottom)
    }
}

#Preview {
    PostCell()
}
