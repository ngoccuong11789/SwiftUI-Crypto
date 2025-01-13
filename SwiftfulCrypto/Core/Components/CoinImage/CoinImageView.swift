//
//  CoinImageView.swift
//  SwiftfulCrypto
//
//  Created by Cuong Nguyen Ngoc on 10/01/2025.
//

import SwiftUI



struct CoinImageView: View {
    
    @StateObject var vm : CoinImageViewModel
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
    }
    
    var body: some View {
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

//#Preview {
//    CoinImageView(coin: dev.coin)
//}

struct CoinImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoinImageView(coin: dev.coin)
            .padding()
            .previewLayout(.sizeThatFits)
        
    }
}
