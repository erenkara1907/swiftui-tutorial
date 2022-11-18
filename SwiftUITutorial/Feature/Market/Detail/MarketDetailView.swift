//
//  MarketDetailView.swift
//  SwiftUITutorial
//
//  Created by Eren Kara on 14.11.2022.
//

import SwiftUI

struct MarketDetailView: View {
    
    // ViewModel
    @StateObject private var detailViewModel: MarketDetailViewModel = MarketDetailViewModel()
    @EnvironmentObject var homeViewModel: MarketViewModel
    
    // For Close View
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Text("Please Add Item")
                .font(.largeTitle)
            
            CustomTextField(name: "Name", text: $detailViewModel.name)
            CustomTextField(name: "Count", text: $detailViewModel.count)
                .padding(.bottom, 10.0)
            
            Button("Save") {
                saveItem()
            } // Button
            .padding(.vertical, 10.0)
            .padding(.horizontal, 70.0)
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
            
        } // VStack
    } // Body
}

extension MarketDetailView {
    private func saveItem() {
        let result = detailViewModel.save()
        guard result.0 == true else { return }
        
        homeViewModel.addItem(item: result.1!)
        presentationMode.wrappedValue.dismiss()
    }
}

struct MarketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MarketDetailView()
    }
}

struct CustomTextField: View {
    let name: String
    @State var text: Binding<String>
    var body: some View {
        TextField(name, text: text)
            .padding(.all, 10.0)
            .border(.secondary)
            .padding(.horizontal, 20.0)
    }
}

/*
protocol BaseView {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode> { get }
    
    func dismiss()
}

extension BaseView where Self: View  {
    func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}
*/
