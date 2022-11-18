//
//  TweetCard.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 9.11.2022.
//

import SwiftUI

struct TweetCard: View {
    let tweet: TweetModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text(tweet.userName)
                .font(.title)
            Text("\(tweet.body)")
                .font(.title3)
            
            if tweet.likeCount != nil {
                HStack {
                    Text("\(tweet.likeCount!)").fontWeight(.light)
                    Image(systemName: "heart.circle.fill")
                        .foregroundColor(.pink)
                    Spacer()
                } // HStack
            }
            Spacer()
        } // VStack
        .padding(2.0)
        .overlay(RoundedRectangle(cornerRadius: 10.0).stroke(.red, lineWidth: 2.0))
        .padding(2.0)
        .frame(height: 100.0, alignment: .top)
    }
}

struct TweetCard_Previews: PreviewProvider {
    static var previews: some View {
        TweetCard(tweet: TweetModel.fakeTweet)
            .previewLayout(.sizeThatFits)
    }
}
