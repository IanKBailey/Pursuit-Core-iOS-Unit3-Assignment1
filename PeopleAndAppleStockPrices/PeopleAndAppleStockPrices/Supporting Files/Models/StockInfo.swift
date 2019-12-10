//
//  StockInfo.swift
//  PeopleAndAppleStockPrices
//
//  Created by Ian Bailey on 12/10/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

class Stock: Decodable {
    let open: Double
    let close: Double
    let date: String
}

extension Stock {
    static func getStock(data: Data) -> [Stock] {
        var stocksData = [Stock]()
        do {
             stocksData = try JSONDecoder().decode([Stock].self, from: data)
        } catch {
            fatalError("\(error)")
        }
        return stocksData
    }

}
