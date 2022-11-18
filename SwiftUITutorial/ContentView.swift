//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 9.11.2022.
//

import SwiftUI
import Kingfisher

struct IconFieldView: View {
    
    var iconName: String = "Hello"
    @State var textFieldValue: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder", text: $textFieldValue)
            Text(textFieldValue)
                .font(.largeTitle)
                .bold()
            
            Image(systemName: textFieldValue.lowercased())
                .frame(width: 100.0, height: 100.0, alignment: .center)
        } // VStack
    }
}

struct ContentView: View {
    
    private let imageUrl: String = "https://picsum.photos/seed/picsum/200/300"
    
    var body: some View {
        CircleTextImageView(title: "Manzara", imageUrl: imageUrl)
            .frame(width: 200.0, height: 200.0, alignment: .center)
    }
    
    fileprivate func sampleGroupView() -> some View {
        return VStack {
            Group {
                // MARK: - Login View
                VStack {
                    Text("Hello")
                        .accentColor(.blue)
                        .font(.callout)
                } // VStack
            } // Group
            
            Group {
                // MARK: - Register View
                VStack {
                    Image(systemName: "atom")
                        .foregroundColor(.blue)
                    Text("Hello 2")
                        .foregroundColor(.blue)
                        .opacity(0.8)
                } // VStack
            } // Group
        } // VStack
    }
    
    fileprivate func sampleHorizontalView() -> some View {
        return HStack {
            Spacer().frame(width: 70.0, alignment: .center)
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Color.red
            Spacer().frame(width: 70.0, alignment: .center)
        }
    } // Horizontal View
    
    fileprivate func sampleVerticalView() -> some View {
        return VStack {
            Spacer().frame(width: 70.0, alignment: .center)
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Color.red
            Spacer().frame(width: 70.0, alignment: .center)
        }
    } // Vertical View
    
    fileprivate func sampleStackView() -> some View {
        return ZStack {
            Spacer().frame(width: 70.0, alignment: .center)
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Color.red
            Spacer().frame(width: 70.0, alignment: .center)
        }
    } // Stack View
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
