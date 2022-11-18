//
//  CircleTextImageView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 9.11.2022.
//

import SwiftUI
import Kingfisher

struct CircleTextImageView: View {
    let title: String
    let imageUrl: String
    
    var body: some View {
        VStack {
            KFImage(URL(string: imageUrl)!)
                .fade(duration: 0.25)
                .resizable()
                .clipShape(Circle())
                .shadow(radius: 20.0)
            
            Text(title)
                .bold()
                .italic()
        } // VStack
    }
}

struct CircleTextImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleTextImageView(title: "Hello", imageUrl: "https://picsum.photos/seed/picsum/200/300")
            .frame(width: 200.0, height: 200.0, alignment: .center)
            .previewLayout(.sizeThatFits)
    }
}
