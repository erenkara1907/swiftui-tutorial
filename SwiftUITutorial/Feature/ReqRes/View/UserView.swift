//
//  UserView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 14.11.2022.
//

import SwiftUI
import Kingfisher

struct UserView: View {
    @StateObject var userViewModel = UserViewModel(userService: UserService())
    
    var body: some View {
        if userViewModel.user == nil {
            LoadingView()
        } else {
            List(userViewModel.user!.data ?? [] ) {
                CardView(model: $0)
            } // List
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

struct CardView: View {
    let model: Datum
    
    var body: some View {
        HStack {
            KFImage(URL(string: model.avatar!))
                .resizable()
                .frame(width: 50, height: 50.0, alignment: .center)
                .clipShape(Circle())
                .padding(.trailing, 10.0)
            Text(model.firstName!)
            Text(model.lastName!)
        }
    }
}
