//
//  CustomTabView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 9.11.2022.
//

import SwiftUI

struct CustomTabView: View {
    
    @State private var selectedIndex = CustomTabs.home
    
    var body: some View {
        VStack {
            Button("Reset") {
                selectedIndex = CustomTabs.home
            } // Button
            
            TabView(selection: $selectedIndex) {
                HouseView().tabItem {
                    Image(systemName: "house")
                    if selectedIndex == CustomTabs.home {
                        Text("House")
                    }
                }.tag(CustomTabs.home)
                
                HeartView().tabItem {
                    Image(systemName: "heart")
                    if selectedIndex == CustomTabs.heart {
                        Text("Favorite")
                    }
                }.tag(CustomTabs.heart)
                
                StarView().tabItem {
                    Image(systemName: "star")
                    if selectedIndex == CustomTabs.star {
                        Text("Star")
                    }
                }.tag(CustomTabs.star)
            } // TabView
            .accentColor(.orange)
        } // VStack
    } // View
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

struct StarView: View {
    var body: some View {
        Text("Tab Content 3")
    }
}

struct HeartView: View {
    var body: some View {
        Text("Tab Content 2")
    }
}

struct HouseView: View {
    
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: {
                    Text("Hello")
                }, label: {
                    Label("Lighting", systemImage: "bolt.fill")
                        .foregroundColor(.red)
                })
                
                List {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit)
                        }
                        .onDelete { fruits.remove(atOffsets: $0) }
                        .onMove { fruits.move(fromOffsets: $0, toOffset: $1) }
                    }
                    .navigationTitle("Fruits")
                    .toolbar {
                        EditButton()
                }
            }
            }
    }
}
