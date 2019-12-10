//
//  UserInfo.swift
//  PeopleAndAppleStockPrices
//
//  Created by Ian Bailey on 12/9/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

class UserInfoData: codable {
    let results: [User]
}

class User: codable {
    let name: Name
    let location: Location
    let email: String
    let phone: String
}

class Name: Codable {
    let first: String
    let last: String
}

class Location: Codable {
    let city: String
}

extension UserInfo {
    static func getUsers
}


    
        
        
