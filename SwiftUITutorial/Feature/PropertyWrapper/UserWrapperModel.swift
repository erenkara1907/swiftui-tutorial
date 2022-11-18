//
//  UserWrapperModel.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 17.11.2022.
//

import Foundation

// Lastname is always bigger
struct UserWrapperModel {
    var name: String
    @UpperCaseWrapper var lastName: String
    @NumberCaseWrapper var age: String
    
    var fullName: String {
        return name + lastName + age
    }
}
