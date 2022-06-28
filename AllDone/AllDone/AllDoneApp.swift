//
//  AllDoneApp.swift
//  AllDone
//
//  Created by Emrah Karabulut on 20.06.2022.
//

import SwiftUI
import Firebase

@main
struct AllDoneApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel.shared)
        }
    }
}
