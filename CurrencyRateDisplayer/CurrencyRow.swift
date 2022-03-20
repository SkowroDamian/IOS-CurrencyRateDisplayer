//
//  CurrencyRow.swift
//  CurrencyRateDisplayer
//
//  Created by Damian Skowroński on 23/02/2022.
//

import SwiftUI

struct CurrencyRow: View {
    var key: String
    var rate: Float
    
    var body: some View {
        HStack(spacing: 15) {
            Text(key)
            Text(" : ")
            Text("\(rate)")
            Spacer()

        }.padding(.leading, 10)
//        Divider()
    }
}

struct CurrencyRow_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyRow(key: "test", rate: 10.10)
    }
}
