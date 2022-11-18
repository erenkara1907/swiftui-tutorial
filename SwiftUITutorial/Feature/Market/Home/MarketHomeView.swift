//
//  MarketHomeView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 14.11.2022.
//

import SwiftUI

struct MarketHomeView: View {
    
    @StateObject private var marketViewModel = MarketViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(marketViewModel.items) { item in
                    HStack {
                        Image(systemName: "car")
                        Text(item.name)
                        Spacer()
                        Text("\(item.price)$")
                    } // HStack
                } // List
                NavigationLink {
                    MarketDetailView()
                } label: {
                    Text("Add Item")
                }

            } // VStack
        } // NavigationView
        .environmentObject(marketViewModel)
    } // Body
}

struct MarketHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MarketHomeView()
    }
}
