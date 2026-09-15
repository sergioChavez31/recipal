//
//  User.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/14/26.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
