//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/13/26.
//
import FirebaseCore
import SwiftUI

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
