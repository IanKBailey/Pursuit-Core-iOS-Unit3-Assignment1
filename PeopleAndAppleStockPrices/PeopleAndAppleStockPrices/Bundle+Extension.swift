//
//  Bundle+Extension.swift
//  PeopleAndAppleStockPrices
//
//  Created by Ian Bailey on 12/9/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation


extension Bundle {
 static func getJSON(url: String, ext: String) -> Data {
    
    var data: Data
    
        guard let fileURL = Bundle.main.url(forResource: url, withExtension: ext) else {fatalError("Couldn't find json file")
    }
            
            do {
                data = try Data(contentsOf: fileURL)
            } catch {
                fatalError("\(error)")
            }
    return data
}
}
