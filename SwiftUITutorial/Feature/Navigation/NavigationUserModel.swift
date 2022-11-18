//
//  NavigationUserModel.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 9.11.2022.
//

import Foundation

struct UserModel: Identifiable {
    let id: UUID = UUID()
    let name: String
}

extension UserModel {
    
    /// Samples User Model
    static let samples: [UserModel] = [
        UserModel(name: "Eren"),
        UserModel(name: "Veli"),
        UserModel(name: "Zeynep"),
    ]
}
