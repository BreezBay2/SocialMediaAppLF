//
//  LFExploreViewModel.swift
//  LF_App
//
//  Created by Taro Altrichter on 26.03.24.
//

import Foundation

class LFSearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUser()
    }
}
