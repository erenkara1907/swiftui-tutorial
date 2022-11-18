//
//  NumberCaseWrapper.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 17.11.2022.
//

import Foundation

@propertyWrapper struct NumberCaseWrapper {
    var wrappedValue: String {
        didSet {
            self.wrappedValue = calculateValue(value: wrappedValue)
        } // didSet
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = Int(wrappedValue)?.description ?? ""
    }
    
    private func calculateValue(value: String) -> String {
        return Int(value)?.description ?? ""
    }
}
