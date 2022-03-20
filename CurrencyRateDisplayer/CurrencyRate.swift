//
//  CurrencyRate.swift
//  CurrencyRateDisplayer
//
//  Created by Damian Skowroński on 23/02/2022.
//

import Foundation

struct CurrencyRate: Codable {
    var success: Bool
    var timestamp: Int
    var base: String
    var date: String
    var rates: [String: Float]
    
}
