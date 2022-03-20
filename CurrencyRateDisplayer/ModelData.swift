//
//  ModelData.swift
//  CurrencyRateDisplayer
//
//  Created by Damian Skowroński on 23/02/2022.
//

import Foundation
import Combine

class ModelData: ObservableObject {
    @Published var currencyRates: CurrencyRate = loadData()
}

func loadData<T:Decodable>() -> T {
    
    let api_key = "8c593bc64ffa740f9338215a3341d0c4"
    let url_base = "http://data.fixer.io/api/latest"
    //let base = "GBP"
    let symbols = "USD,AUD,CAD,PLN,MXN"
    
    guard let url = URL(string: "\(url_base)?access_key=\(api_key)&symbols=\(symbols)") else {
        fatalError("EROROORO NONO")
    }
    
    let data: Data

    do {
        data = try Data(contentsOf: url)
    } catch {
        fatalError("Couldn't load data from \(url)\n \(error)")
    }

    let decoder = JSONDecoder()
    do {
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(url) as \(T.self): \n \(error)")
    }
    
}
