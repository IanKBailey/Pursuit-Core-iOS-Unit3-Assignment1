//
//  ViewController.swift
//  PeopleAndAppleStockPrices
//
//  Created by Alex Paul on 12/7/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var userInfo = [User]() {
        didSet {
            tableView.reloadData()
        }
    }
    let data = Bundle.getJSON(url: "userinfo", ext: "json")
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    userInfo = UserInfoData.getUsers(data: data)
}
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
            let userDetailViewController = segue.destination as? UserDetailViewController else { return }
        
        let usersDetail = userInfo[indexPath.row]
        userDetailViewController.users = usersDetail
    }
    
    
    
}



extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        userInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        let user = userInfo[indexPath.row]
        cell.textLabel?.text = user.name.fullName
        cell.detailTextLabel?.text = user.location.city.capitalized
        return cell
    }
    
    
}
