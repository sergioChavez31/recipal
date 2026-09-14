//
//  RegisterView.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/14/26.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        @State var name: String = ""
        @State var email: String = ""
        @State var password: String = ""
        
        // "Vertical Stack"
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start Putting in Recipes", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", background: .green) {
                    // Attempt registration
                }
                .padding()
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
