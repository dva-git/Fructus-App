//
//  FructusApp.swift
//  Fructus
//
//  Created by why_me on 22.03.24.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            }
            else {
                ContentView()
            }
            
        }
    }
}




