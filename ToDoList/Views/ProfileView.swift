//
//  ProfileView.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/14/26.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewmodel = ProfileViewViewModel()
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewmodel.user {
                    profile(user: user)
                } else {
                    Text("Loading user...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear() {
            viewmodel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        // Avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        // Info: Name, Email, Member since
        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding()
            HStack {
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding()
            HStack {
                Text("Member Since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
        }
        .padding()
        // Sign out
        Button("Log out") {
            viewmodel.logOut()
        }
        .tint(Color.red)
        .padding()
        
        Spacer()
    }
}

#Preview {
    ProfileView()
}
