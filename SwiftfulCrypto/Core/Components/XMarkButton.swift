//
//  XMarkButton.swift
//  SwiftfulCrypto
//
//  Created by Cuong Nguyen Ngoc on 12/01/2025.
//

import SwiftUI

struct XMarkButton: View {
    @Environment(\.presentationMode) var presentationMode
    //@Environment(\.dismiss) var dismiss
    var body: some View {
        Button(action: {
            print("clicked")
            print("presentationMode: \(presentationMode)")
            presentationMode.wrappedValue.dismiss()
            //dismiss()
            }, label: {
            Image(systemName: "xmark")
            .font(.headline)
            })
    }
}

#Preview {
    XMarkButton()
}
