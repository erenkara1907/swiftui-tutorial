//
//  ModelListView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 9.11.2022.
//

import SwiftUI

struct ModelListView: View {
    var body: some View {
        VStack {
            Text("Welcome List")
                .font(.largeTitle)
            .fontWeight(.light)
            
            ScrollView {
                LazyVStack {
                    ForEach(TweetModel.tweets) { data in
                        TweetCard(tweet: data)
                            .padding(.bottom, 10.0)
                    } // List
                } // LazyVStack
                .padding(.horizontal, 20.0)
                .padding(.vertical, 40.0)
            } // ScrollView
            .background(Color.gray.opacity(0.1))
        } // VStack
    }
}

struct ModelListView_Previews: PreviewProvider {
    static var previews: some View {
        ModelListView()
    }
}

