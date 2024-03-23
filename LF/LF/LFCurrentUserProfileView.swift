//
//  LFCurrentUserProfileView.swift
//  LF_App
//
//  Created by Taro Altrichter on 20.03.24.
//

import SwiftUI

struct LFCurrentUserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .foregroundStyle(Color(.systemGray4))
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Kofi")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("@cutekofi")
                                .font(.subheadline)
                            
                            Text("200 Followers")
                                .font(.subheadline)
                                .foregroundStyle(Color(.systemGray))
                        }
                        
                        Spacer()
                        
                    }
                    
                    Text("This is an example bio. This should show a bunch of stuff you want to tell people about you")
                        .font(.footnote)
                    
                    
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.teal)
                            .frame(width: 352, height: 32)
                            .background(.white)
                            .cornerRadius(8)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(.systemGray4), lineWidth: 1)
                            }
                    }
                }
                .padding(.horizontal)
                .padding(.bottom)
                
                Divider()
                
                LazyVStack {
                    ForEach(0 ..< 10) { post in
                        PostCell()
                    }
                }
                .padding(.vertical, 30)
            }
        }
    }
}

#Preview {
    LFCurrentUserProfileView()
}
