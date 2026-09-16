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
                HeaderView(title: "ReciPal",
                           subtitle: "Helping you cook, always ",
                           angle: 15,
                           background: .green)
                
                // Login Form 
                Form {
                    if !viewmodel.errorMessage.isEmpty {
                        Text(viewmodel.errorMessage).foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewmodel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewmodel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Log In",
                             background: .blue) {
                        // Attempt log in
                        viewmodel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                
                // Create Account
                VStack {
                    Text("New user?")
                    
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
