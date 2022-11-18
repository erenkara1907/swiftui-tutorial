//
//  TimerView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 17.11.2022.
//

import SwiftUI

// SubsccriptionView
struct TimerView: View {
    
    @State private var timeText: String = ""
    @State private var color: Color = .red
    @State private var colorValue: Int = 0
    
    private let timer = Timer.publish(every: 2.0, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            SubscriptionView(content: Text(timeText), publisher: timer) { time in
                timeText = String(describing: time.description)
                colorValue += 1
            } // SubscriptionView
        } // VStack
        .background(colorValue % 2 == 0 ? .red : .blue)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
