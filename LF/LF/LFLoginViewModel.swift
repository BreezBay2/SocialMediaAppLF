//
//  LFLoginViewModel.swift
//  LF_App
//
//  Created by Taro Altrichter on 25.03.24.
//

import Foundation

class LFLoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
