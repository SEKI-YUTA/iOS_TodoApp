//
//  User.swift
//  ToDoList
//
//  Created by 関佑太 on 2023/07/04.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
