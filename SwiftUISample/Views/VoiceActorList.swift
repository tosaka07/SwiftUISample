//
//  VoiceActorList.swift
//  SwiftUISample
//
//  Created by 坂上翔悟 on 2019/06/09.
//  Copyright © 2019 Shogo Sakaue. All rights reserved.
//

import SwiftUI

struct VoiceActorList : View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritedOnly) {
                    Text("お気に入りのみ")
                }
                ForEach(userData.voiceActors) { actor in
                    if !self.userData.showFavoritedOnly || actor.isFavorited {
                        NavigationButton(destination: VoiceActorDetail(voiceActor: actor)) {
                            VoiceActorRow(actor: actor)
                        }
                    }
                }
            }.navigationBarTitle(Text("声優リスト"), displayMode: .large)
        }
    }
}

#if DEBUG
struct VoiceActorList_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS MAX"].identified(by: \.self)) {
            VoiceActorList()
                .environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: $0))
                .previewDisplayName($0)
        }
    }
}
#endif
