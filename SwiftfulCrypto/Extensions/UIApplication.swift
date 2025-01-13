//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Cuong Nguyen Ngoc on 11/01/2025.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
