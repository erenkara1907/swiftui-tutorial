//
//  Loggin+AfError.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 14.11.2022.
//

import Foundation
import Alamofire
import Logging

extension AFError {
    private static let logger = Logger(label: "com.eren.main")
    
    func showError() {
        AFError.logger.error("\(errorDescription?.description)")
    }
}
