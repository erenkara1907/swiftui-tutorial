//
//  MarketViewModel.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 14.11.2022.
//

import Foundation

class MarketViewModel: ObservableObject {
    init() {
        items = MarketItem.items
    }
    
    @Published var items: [MarketItem]
}

// MARK: - Market Business
extension MarketViewModel: MarketUses {
    func addItem(item: MarketItem) {
        items.append(item)
    }
    
    func removeItem(id: UUID) -> Bool {
        guard let index = items.firstIndex(where: { item in item.id == id }) else { return false }
        self.items.remove(at: index)
        return true
    }
}

protocol MarketUses {
    func addItem(item: MarketItem)
    func removeItem(id: UUID) -> Bool
    
    var items: [MarketItem] { get set }
}

/*
extension MarketUses {
    mutating func removeItem(id: UUID) -> Bool {
        guard let index = items.firstIndex(where: { item in item.id == id }) else { return false }
        self.items.remove(at: index)
        return true
    }
}
*/
