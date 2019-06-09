//
//  CircleImage.swift
//  SwiftUISample
//
//  Created by 坂上翔悟 on 2019/06/09.
//  Copyright © 2019 Shogo Sakaue. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("jun_1"))
    }
}
#endif
