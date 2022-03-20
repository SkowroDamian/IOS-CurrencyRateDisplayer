//
//  ContentView.swift
//  CurrencyRateDisplayer
//
//  Created by Damian Skowroński on 22/02/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var modelData = ModelData()
    
    var body: some View {
        Text(modelData.currencyRates.date)
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
