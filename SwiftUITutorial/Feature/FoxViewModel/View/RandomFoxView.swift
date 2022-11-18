//
//  RandomFoxView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 14.11.2022.
//

import SwiftUI
import Kingfisher
import ActivityIndicatorView

struct RandomFoxView: View {
    private let title: String = "My Fox"
    @StateObject private var foxViewModel: FoxViewModel = FoxViewModel(service: FoxService())
    
    var body: some View {
        VStack {
            TopBarView(title: title, foxViewModel: foxViewModel)
            
            if foxViewModel.isCompleted ?? false {
                ResponsiveImage(image: foxViewModel.fox?.image)
            }else {
                LoadingView()
            }
            
            Spacer()
            
        } // VStack
    } // Body
}

struct RandomFoxView_Previews: PreviewProvider {
    static var previews: some View {
        RandomFoxView()
    }
}

struct TopBarView: View {
    let title: String
    let foxViewModel: FoxViewModel
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            Spacer()
            Button("Refresh") {
                foxViewModel.refreshView()
            } // Button
        } // HStack
        .padding(.all, 10.0)
    }
}

struct LoadingView: View {
    var body: some View {
        VStack {
            ActivityIndicatorView(isVisible: .constant(true), type: .growingCircle)
                .frame(width: 50.0, height: 50.0, alignment: .center)
        } // VStack
    }
}

struct ResponsiveImage: View {
    let image: String?
    var body: some View {
        GeometryReader { geometry in
            KFImage(URL(string: image ?? ""))
                .resizable()
                .frame(height: geometry.size.height * 0.4, alignment: .center)
        }
    }
}
