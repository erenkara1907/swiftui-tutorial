//
//  WelcomeView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 18.11.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        Text(LocaleKeys.welcome.rawValue)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .environment(\.locale, .init(identifier: ProjectLanguage.tr.rawValue))
    }
}
