//
//  MainView.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/13/26.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        // Takes you to login view
        NavigationView {
            LoginView()
        }
        .padding()
    }
}

#Preview {
    MainView()
}
