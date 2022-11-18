//
//  HelloView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 18.11.2022.
//

import SwiftUI

struct HelloView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .titleStyle()
            
            Text("Hello, World! 2 asaddasdasdadsadsa")
                .modifier(AppTitle(isShadowHeight: true))
        } // VStack
    }
}

struct AppTitle: ViewModifier {
    
    let isShadowHeight: Bool
    
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .bold()
            .foregroundColor(.blue)
            .shadow(radius: isShadowHeight ? Shadows.high.rawValue : Shadows.normal.rawValue)
    }
}

enum Shadows: Double {
    case normal = 2.0
    case high = 10.0
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}
