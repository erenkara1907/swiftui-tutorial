//
//  View+Style.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 18.11.2022.
//

import Foundation
import SwiftUI

extension View {
    func titleStyle() -> some View {
        self.modifier(AppTitle(isShadowHeight: false))
    }
}
