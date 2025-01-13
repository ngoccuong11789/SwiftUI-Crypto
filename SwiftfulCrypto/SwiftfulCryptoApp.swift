//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by Cuong Nguyen Ngoc on 06/01/2025.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
