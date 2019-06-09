//
//  UserData.swift
//  SwiftUISample
//
//  Created by 坂上翔悟 on 2019/06/09.
//  Copyright © 2019 Shogo Sakaue. All rights reserved.
//

import SwiftUI
import Combine

typealias PassthroughRelay<T> = PassthroughSubject<T, Never>
typealias CurrentValueRelay<T> = CurrentValueSubject<T, Never>

final class UserData: BindableObject {
    let didChange = PassthroughRelay<UserData>()
    
    var showFavoritedOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var voiceActors = voiceActorData {
        didSet {
            didChange.send(self)
        }
    }
}
