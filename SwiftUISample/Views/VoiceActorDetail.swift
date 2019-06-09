//
//  VoiceActorDetail.swift
//  SwiftUISample
//
//  Created by 坂上翔悟 on 2019/06/09.
//  Copyright © 2019 Shogo Sakaue. All rights reserved.
//

import SwiftUI

struct VoiceActorDetail : View {
    @EnvironmentObject var userData: UserData
    var voiceActor: VoiceActor
    
    var voiceActorIndex: Int {
        userData.voiceActors.firstIndex(where: { $0.id == voiceActor.id })!
    }
    
    var body: some View {
        VStack {
            voiceActor.image(forSize: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            HStack {
                Text(voiceActor.lastName)
                Text(voiceActor.firstName)
                Button(action: {
                    self.userData.voiceActors[self.voiceActorIndex].isFavorited.toggle()
                }, label: {
                    if self.userData.voiceActors[self.voiceActorIndex].isFavorited {
                        Image(systemName: "star.fill")
                            .imageScale(.small)
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                            .imageScale(.small)
                            .foregroundColor(.yellow)
                    }
                })
            }.font(.title)
        }.navigationBarTitle(Text("\(voiceActor.lastName) \(voiceActor.firstName)"))
    }
}

#if DEBUG
struct VoiceActorDetail_Previews : PreviewProvider {
    static var previews: some View {
        VoiceActorDetail(voiceActor: voiceActorData[0])
            .environmentObject(UserData())
    }
}
#endif
