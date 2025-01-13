//
//  HomeStatsView.swift
//  SwiftfulCrypto
//
//  Created by Cuong Nguyen Ngoc on 11/01/2025.
//

import SwiftUI

struct HomeStatsView: View {
    
    
    @EnvironmentObject private var vm: HomeViewModel
    @Binding var showPortfolio: Bool
    
    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
        }
        .frame(width: UIScreen.main.bounds.width,
               alignment: showPortfolio ? .trailing : .leading)
    }
}

//#Preview {
//    HomeStatsView(showPortfolio: .constant(false))
//        .environment(dev.homeVM)
//}

struct HomeStatsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatsView(showPortfolio: .constant(false))
            .environmentObject(dev.homeVM)
        
    }
}
