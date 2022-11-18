//
//  TapGestureView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 17.11.2022.
//

import SwiftUI

struct TapGestureView: View {
    @State private var isTapped: Bool = false
    
    private var onTap: some Gesture {
        TapGesture(count: 1)
            .onEnded { Void in
                self.isTapped = !self.isTapped
            }
    }
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerSize: .init(width: 50.0, height: isTapped ? 20.0 : 50.0))
                .fill(isTapped ? .primary : .secondary)
                .animation(.easeInOut(duration: 1))
                .frame(width: 200.0, height: 200.0, alignment: .center)
                .gesture(onTap)
        } // VStack
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
