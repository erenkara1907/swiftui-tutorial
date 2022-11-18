//
//  FoxViewModel.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 14.11.2022.
//

import Foundation

class FoxViewModel: ObservableObject {
    
    init(service: IFoxService) {
        self.service = service
        fetchFox()
    }
    
    @Published var fox: FoxModel?
    @Published var isCompleted: Bool?
    private let service: IFoxService
    
    private func fetchFox() {
        service.fetchItem(path: .floof) { (data, isCompleted) in
            self.isCompleted = isCompleted
            self.fox = data
        }
    }
    
    func refreshView() {
        isCompleted = false
        fetchFox()
    }
}
