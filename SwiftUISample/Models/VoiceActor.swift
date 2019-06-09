//
//  VoiceActor.swift
//  SwiftUISample
//
//  Created by 坂上翔悟 on 2019/06/09.
//  Copyright © 2019 Shogo Sakaue. All rights reserved.
//

import SwiftUI

struct VoiceActor: Hashable, Codable, Identifiable {
    var id: Int
    var firstName: String
    var lastName: String
    var birthday: String
    var height: Float
    var weight: Float
    var office: String
    var imageUrl: String
    var isFavorited: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case birthday
        case height
        case weight
        case office
        case imageUrl = "image_url"
        case isFavorited = "is_favorited"
    }
    
    func image(forSize size: Int) -> Image {
        ImageStore.shared.image(name: imageUrl, size: size)
    }
}
