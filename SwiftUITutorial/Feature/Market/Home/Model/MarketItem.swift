//
//  MarketItem.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 14.11.2022.
//

import Foundation

struct MarketItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    var price: Int
    
    mutating func updatePrice(value: Int?) {
        guard let _value = value else { return }
        price = _value
    }
}

extension MarketItem {
    static let items = [
        MarketItem(name: "E1", price: 15),
        MarketItem(name: "E2", price: 30),
    ]
}
