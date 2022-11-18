//
//  PropertyWrapperView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 17.11.2022.
//

import SwiftUI

struct PropertyWrapperView: View {
    
    @State var userWrapperModel: UserWrapperModel = UserWrapperModel(name: "e", lastName: "s", age: "12")
    
    var body: some View {
        VStack {
            Text(userWrapperModel.fullName)
                .font(.largeTitle)
            
            TextField("", text: $userWrapperModel.lastName)
            TextField("Number", text: $userWrapperModel.age)
        } // VStack
    }
}

struct PropertyWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperView()
    }
}
