//
//  CircleButtonView.swift
//  SwiftfulCrypto
//
//  Created by Cuong Nguyen Ngoc on 06/01/2025.
//

import SwiftUI

struct CircleButtonView: View {
    let iconName : String
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 0
            )
            .padding()
    }
}

//#Preview {
//    Group {
//        CircleButtonView(iconName: "info")
//            .previewLayout(.sizeThatFits)
//        
//        CircleButtonView(iconName: "plus")
//            .previewLayout(.sizeThatFits)
//            //.colorScheme(.dark)
//            .preferredColorScheme(.dark)
//    }
//}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleButtonView(iconName: "info")
                .previewLayout(.sizeThatFits)
            
            CircleButtonView(iconName: "plus")
                .previewLayout(.sizeThatFits)
                //.colorScheme(.dark)
                .preferredColorScheme(.dark)
        }
        
    }
}

//struct CircleButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            CircleButtonView(iconName: "info")
//                .previewLayout(.sizeThatFits)
//                .background(Color.gray)
//        }
//        
//    }
//}
