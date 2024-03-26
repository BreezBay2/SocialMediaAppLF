//
//  ProfileImageView.swift
//  LF_App
//
//  Created by Taro Altrichter on 26.03.24.
//

import SwiftUI

struct ProfileImageView: View {
    var user: User?
    
    var body: some View {
        if let imageURL = user?.profileImageURL {
            
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(Color(.systemGray4))
        }
    }
}
