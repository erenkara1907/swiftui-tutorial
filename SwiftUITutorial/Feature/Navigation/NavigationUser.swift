//
//  NavigationUser.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 9.11.2022.
//

import SwiftUI

struct NavigationUser: View {
    
    @State private var isToggle: Bool = false
    
    var body: some View {
        NavigationView {
            List(UserModel.samples) { user in
                NavigationLink(destination: {
                    UserViewDetail(user: user)
                }, label: {
                    Text(user.name)
                })
            } // List
            .navigationTitle("Navigation Users")
            .toolbar {
                ToolbarItem {
                    /*
                    NavigationLink("Welcome") {
                        Text("Product")
                            .background(Color.red)
                    } // NavigationLink
                    */
                    
                    Button("Open Sheet") {
                        isToggle.toggle()
                    }
                } // ToolbarItem
            } // Toolbar
        } // Navigation View
        .sheet(isPresented: $isToggle) {
            Button("Close Sheet") {
                isToggle.toggle()
            }
        } // ActionSheet
    }
}

struct NavigationUser_Previews: PreviewProvider {
    static var previews: some View {
        NavigationUser()
    }
}
