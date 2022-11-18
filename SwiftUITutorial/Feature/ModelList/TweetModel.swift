//
//  TweetModel.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 9.11.2022.
//

import Foundation

struct TweetModel: Identifiable {
    let id: UUID = UUID()
    
    let userName: String
    var body: String
    var likeCount: Int?
}

extension TweetModel {
    
    /// Sample tweet arrays
    static let tweets = [
        TweetModel(userName: "Eren", body: "Hello 1", likeCount: 150),
        TweetModel(userName: "Ahmet", body: "Hello 2"),
        TweetModel(userName: "Veli", body: "Hello 3", likeCount: 250),
        TweetModel(userName: "Zeynep", body: "Hello 4", likeCount: 550),
        TweetModel(userName: "Pamuk", body: "Hello 5", likeCount: 1250),
    ]
    
    static let fakeTweet = TweetModel(userName: "Fake User", body: "Fake Tweet", likeCount: 1)
}
