//
//  Navigation+View.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 14.11.2022.
//

import Foundation
import SwiftUI

extension View {
    func dismiss() {
        @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        presentationMode.wrappedValue.dismiss()
    }
}
