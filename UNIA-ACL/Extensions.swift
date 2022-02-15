//
//  Extensions.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 2/13/22.
//

import Foundation
import SwiftUI

//Needed to dismiss keypad manually after use.
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

//Date formatter
private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()


//extension NumberFormatter {
//    static var currency: NumberFormatter {
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//        return formatter
//    }
//}

//TODO: change amount type to double, also globally for all transactions/models
func format2Currency(amount: Int) -> String {
    
    let currencyFormatter = NumberFormatter()
    currencyFormatter.numberStyle = .currency
    // localize to your grouping and decimal separator
    currencyFormatter.locale = Locale.current
    currencyFormatter.usesGroupingSeparator = true
    currencyFormatter.maximumFractionDigits = 0
    currencyFormatter.currencySymbol = ""
    
    let number = amount as NSNumber
    
    let amountString = currencyFormatter.string(from: number)!
    
    return amountString
}

