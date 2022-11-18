//
//  TextEditingView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 17.11.2022.
//

import SwiftUI

struct TextEditingView: View {
    @State private var editorValue: String = ""
    
    var body: some View {
        VStack {
            TextEditor(text: $editorValue)
                .cornerRadius(20.0)
                .padding()
                .background(.gray)
                .opacity(0.7)
        } // VStack
    }
}

struct TextEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditingView()
    }
}
