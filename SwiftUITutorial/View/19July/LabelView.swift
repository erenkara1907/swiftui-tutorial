//
//  LabelView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 17.11.2022.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        VStack {
            Label("Heart 1", systemImage: Hearts.heartCircle.rawValue)
                .labelStyle(DefaultLabelStyle())
            Label("Heart 2", systemImage: Hearts.suitHeartFill.rawValue)
                .labelStyle(IconOnlyLabelStyle())
                .padding()
            Label("Heart 3", systemImage: Hearts.suitHeartCircle.rawValue)
                .labelStyle(TitleOnlyLabelStyle())
        } // VStack
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}

enum Hearts: String {
    case heartCircle = "heart.circle"
    case suitHeartFill = "suit.heart.fill"
    case suitHeartCircle = "heart.circle.fill"
}
