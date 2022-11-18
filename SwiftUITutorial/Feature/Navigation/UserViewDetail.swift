//
//  UserView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 9.11.2022.
//

import SwiftUI

struct UserViewDetail: View {
    let user: UserModel
    
    var body: some View {
        Text(user.name)
            .font(.largeTitle)
    }
}

struct UserViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserViewDetail(user: UserModel.samples.first!)
    }
}
