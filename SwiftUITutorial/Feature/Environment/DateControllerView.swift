//
//  DateControllerView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 14.11.2022.
//

import SwiftUI

struct DateControllerView: View {
    @EnvironmentObject var userController: UserController
    var body: some View {
        Text(userController.currentDate.description)
        Button("Date Reset") {
            userController.currentDate = Date.now
        }
    }
}

struct DateControllerView_Previews: PreviewProvider {
    static var previews: some View {
        DateControllerView()
    }
}
