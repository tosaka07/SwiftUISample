//
//  ContentView.swift
//  SwiftUISample
//
//  Created by tosaka on 2019/06/09.
//  Copyright © 2019 Shogo Sakaue. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage(image: Image("jun_1"))
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Hello World")
                    .font(.title)
                    .fontWeight(.black)
                    .color(.black)
                    .multilineTextAlignment(.center)
                HStack {
                    Text("untarakantara")
                        .font(.subheadline)
                    Spacer()
                    Text("untarakantara")
                }
            }
            .padding()
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
