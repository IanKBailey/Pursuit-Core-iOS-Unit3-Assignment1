//
//  StockDetailViewController.swift
//  PeopleAndAppleStockPrices
//
//  Created by Ian Bailey on 12/10/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class StockDetailViewController: UIViewController {

    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var stockImage: UIImageView!
    
    
    @IBOutlet weak var openPrice: UILabel!
    
    
    @IBOutlet weak var closePrice: UILabel!
    
    
    var stocks: Stock?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStocks()
        
    }
    
    private func updateStocks() {
        dateLabel.text = stocks?.date
        openPrice.text = "Open:\(stocks?.open ?? 1)"
        closePrice.text = "Close: \(stocks?.close ?? 1)"
        
        if stocks?.open ?? 1 > stocks?.close ?? 1 {
            stockImage.image = #imageLiteral(resourceName: "thumbsDown")
            self.view.backgroundColor = .red
        } else {
            stockImage.image = #imageLiteral(resourceName: "thumbsUp")
            self.view.backgroundColor = .green
        }
        
    }
   

}
