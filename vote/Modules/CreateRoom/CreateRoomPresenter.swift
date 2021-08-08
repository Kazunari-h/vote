//
//  CreateRoomPresenter.swift
//  vote
//
//  Created by Kazunari Hirosawa on 2021/08/07.
//

import SwiftUI
import Combine

final class CreateRoomPresenter: ObservableObject {
    
    private let interactor: CreateRoomInteractor
    
    init(interactor: CreateRoomInteractor) {
        self.interactor = interactor
    }
    
    
}

