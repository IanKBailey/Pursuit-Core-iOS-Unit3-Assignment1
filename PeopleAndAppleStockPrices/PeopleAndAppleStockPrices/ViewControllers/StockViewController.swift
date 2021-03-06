//
//  StockViewController.swift
//  PeopleAndAppleStockPrices
//
//  Created by Ian Bailey on 12/10/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class StockViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var stockInfo = [Stock]() {
        didSet {
            tableView.reloadData()
        }
    }
    let data = Bundle.getJSON(url: "applstockinfo", ext: "json")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        stockInfo = Stock.getStock(data: data)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
            let stockDetailViewController = segue.destination as? StockDetailViewController else { return }
        
        let stockDetail = stockInfo[indexPath.row]
        stockDetailViewController.stocks = stockDetail
        
    }
    

}

extension StockViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        stockInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stockCell", for: indexPath)
        let stock = stockInfo[indexPath.row]
        cell.textLabel?.text = "\(stock.date)"
        cell.detailTextLabel?.text = "\(stock.open)"
        return cell
    }
    
    
}
