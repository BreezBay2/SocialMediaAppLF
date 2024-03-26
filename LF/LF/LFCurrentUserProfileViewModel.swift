//
//  LFCurrentUserProfileViewModel.swift
//  LF_App
//
//  Created by Taro Altrichter on 26.03.24.
//

import Foundation
import Combine

class LFCurrentUserProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellable)
    }
}
