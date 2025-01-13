//
//  PortfolioView.swift
//  SwiftfulCrypto
//
//  Created by Cuong Nguyen Ngoc on 12/01/2025.
//

import SwiftUI

struct PortfolioView: View {
    
    //@Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Hi")
                }
            }
            .navigationTitle("Edit Portfolio")
//            .toolbar(content: {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    XMarkButton()
//                }
//            })
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            })
            //.navigationBarItems(leading: XMarkButton())
            
        }
    }
}

#Preview {
    PortfolioView()
}
