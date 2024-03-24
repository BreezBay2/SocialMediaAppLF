//
//  LFRegistrationViewModel.swift
//  LF_App
//
//  Created by Taro Altrichter on 24.03.24.
//

import Foundation

class LFRegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var username = ""
    @Published var fullname = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, fullname: fullname, username: username)
    }
}
