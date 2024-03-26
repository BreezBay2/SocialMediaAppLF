//
//  User.swift
//  LF_App
//
//  Created by Taro Altrichter on 24.03.24.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageURL: String?
    var bio: String?
}
