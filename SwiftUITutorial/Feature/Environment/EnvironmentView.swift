//
//  EnvironmentView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 9.11.2022.
//

import SwiftUI

struct EnvironmentView: View {
    @Environment(\.verticalSizeClass) var verticalSize
    @StateObject var userController = UserController()
    
    var body: some View {
        NavigationView {
            VStack {
                Text(userController.currentDate.description)
                HStack {
                    verticalSize == .regular ? Spacer.minVerticalHigh : Spacer.minVertical
                    DatePicker(selection: $userController.currentDate, label: {Text("Date")})
                    verticalSize == .regular ? Spacer.minVerticalHigh : Spacer.minVertical
                } // HStack
                
                NavigationLink {
                    DateControllerView()
                } label: {
                    Text("Normal View")
                }

            } // VStack
        } // Navigation View
        .environmentObject(userController)
    }
}

class UserController: ObservableObject {
    @Published var currentDate: Date = Date()
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}
