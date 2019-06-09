//
//  VoiceActorRow.swift
//  SwiftUISample
//
//  Created by 坂上翔悟 on 2019/06/09.
//  Copyright © 2019 Shogo Sakaue. All rights reserved.
//

import SwiftUI

struct VoiceActorRow : View {
    var actor: VoiceActor
    
    var body: some View {
        HStack {
            actor.image(forSize: 50)
            Text(actor.lastName)
            Text(actor.firstName)
            Spacer()
            if actor.isFavorited {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            } else {
                Image(systemName: "star")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#if DEBUG
struct VoiceActorRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            VoiceActorRow(actor: voiceActorData[0])
            VoiceActorRow(actor: voiceActorData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
