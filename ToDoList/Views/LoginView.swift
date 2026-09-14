//
//  LoginView.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/14/26.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewmodel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            // "Vertical Stack"
            VStack {
                // Header
                HeaderView(title: "To Do list", subtitle: "Get things done", angle: 15, background: .green)
                
                // Login Form
                Form {
                    TextField("Email Address", text: $viewmodel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewmodel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue) {
                        
                    }
                    .padding()
                }
                
                
                // Create Account
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create an Account",
                                   destination: RegisterView())
                }
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
