//
//  User.swift
//  vote
//
//  Created by Kazunari Hirosawa on 2021/08/07.
//

import Foundation

struct User {
    var name: String
}

class UserService: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
}
