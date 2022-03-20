//
//  CurrencyDetail.swift
//  CurrencyRateDisplayer
//
//  Created by Damian Skowroński on 06/03/2022.
//

import SwiftUI

struct CurrencyDetail: View {
    var key: String = "test"
    var value: Float = 11.0
    
    var body: some View {
        VStack{
            Text("\(key)")
            Text("\(value)")
        }
    }
}

struct CurrencyDetail_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyDetail(key: "test", value: 11.0)
    }
}
