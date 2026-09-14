//
//  RegisterView.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/14/26.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        // "Vertical Stack"
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start Putting in Recipes", angle: -15, background: .orange)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
