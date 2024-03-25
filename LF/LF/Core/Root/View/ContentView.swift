//
//  ContentView.swift
//  LF
//
//  Created by Taro Altrichter on 20.03.24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        if viewModel.userSession != nil {
            LFTabView()
        } else {
            LFLoginView()
        }
    }
}

#Preview {
    ContentView()
}
