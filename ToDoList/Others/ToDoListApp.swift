//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by 関佑太 on 2023/07/04.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
