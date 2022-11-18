//
//  SampleListView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 9.11.2022.
//

import SwiftUI

struct SampleListView: View {
    
    private let items: [String] = [
        "chevron.right",
        "chevron.left",
        "chevron.right",
        "chevron.left"
    ]
    
    var body: some View {
            List {
                Section(header: Text("Sample")) {
                    HStack {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                        Spacer()
                        Image(systemName: "chevron.right")
                    } // HStack
                    Text("Hello")
                    Text("Hello")
                } // Section
                
                Section(header: Text("Sample 2")) {
                    HStack {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                        Spacer()
                        Image(systemName: "chevron.right")
                    } // HStack
                    Text("Hello")
                    Text("Hello")
                } // Section
                
                HStack {
                    ForEach(items, id: \.self) { item in
                        Image(systemName: item)
                    } // ForEach
                } // HStack
            } // List
            .listStyle(GroupedListStyle.init())
    }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}
