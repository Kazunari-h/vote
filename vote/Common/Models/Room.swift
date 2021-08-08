//
//  RoomEntity.swift
//  vote
//
//  Created by Kazunari Hirosawa on 2021/08/07.
//

import Foundation

struct Room {
    var name: String
    var isPublic: Bool
    var questions: [Question]
    var createdAt: Date
    var updatedAt: Date
    var author: User
}



