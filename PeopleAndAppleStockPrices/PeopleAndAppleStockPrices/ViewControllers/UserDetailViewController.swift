//
//  UserDetailViewController.swift
//  PeopleAndAppleStockPrices
//
//  Created by Ian Bailey on 12/10/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {

    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    var users: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUsers()
        
    }
    
    private func updateUsers() {
        nameLabel.text = users?.name.fullName
        emailLabel.text = users?.email
        cityLabel.text = users?.location.city
    }

   

}
