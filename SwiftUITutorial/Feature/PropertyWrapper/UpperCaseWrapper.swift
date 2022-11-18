//
//  UpperCaseWrapper.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 18.11.2022.
//

import Foundation

@propertyWrapper struct UpperCaseWrapper {
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.uppercased()
        } // didSet
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.uppercased()
    }
}
