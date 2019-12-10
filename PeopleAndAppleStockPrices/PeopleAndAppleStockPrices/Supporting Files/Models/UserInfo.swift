//
//  UserInfo.swift
//  PeopleAndAppleStockPrices
//
//  Created by Ian Bailey on 12/9/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

class UserInfoData: Decodable {
    let results: [User]
}

class User: Decodable {
    let name: Name
    let location: Location
    let email: String
    let phone: String
}

class Name: Decodable {
    let first: String
    let last: String
}

class Location: Decodable {
    let city: String
}

extension UserInfoData {
    static func getUsers(data: Data) -> [User] {
        var users = [User]()
        do {
            let usersData = try JSONDecoder().decode(UserInfoData.self, from: data)
            users = usersData.results
        } catch {
            fatalError("\(error)")
        }
        return users
    
    
}
}


        
