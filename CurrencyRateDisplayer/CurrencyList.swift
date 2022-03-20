//
//  CurrencyList.swift
//  CurrencyRateDisplayer
//
//  Created by Damian Skowroński on 23/02/2022.
//

import SwiftUI

struct CurrencyList: View {
    @StateObject var modelData = ModelData()
    var body: some View {
        NavigationView{
            List(Array(modelData.currencyRates.rates.keys), id: \.self) { key in
                NavigationLink(destination: CurrencyDetail(key: key, value: modelData.currencyRates.rates[key]!)){
                    CurrencyRow(key: key, rate: modelData.currencyRates.rates[key]!)
                                    }
            }.navigationBarTitle("Currency Rate")
            
        }
    }
}

struct CurrencyList_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyList().environmentObject(ModelData())
    }
}
