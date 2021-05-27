//
//  TabBarController.swift
//  VK client
//
//  Created by Илья Слепцов on 14.04.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    func fillUsersArray() {
        
        let user1 = setNewUser(userNumber: 1, name: "Angelina Jolie", age: 45)
        let user2 = setNewUser(userNumber: 2, name: "Brad Pitt", age: 57)
        let user3 = setNewUser(userNumber: 3, name: "Sandra Bullok", age: 56)
        let user4 = setNewUser(userNumber: 4, name: "Ryan Reynolds", age: 44)
        let user5 = setNewUser(userNumber: 5, name: "Keira Knightley", age: 36)
        let user6 = setNewUser(userNumber: 6, name: "Ben Affleck", age: 48)
        
        let userArray = [user1, user2, user3, user4, user5, user6]
        
        let group1 = Group(name: "Комната смеха", description: "Клуб любителей юмора", groupImage: UIImage(named: "funny"))
        let group2 = Group(name: "VK Travel", description: "Горящие туры", groupImage: UIImage(named: "vktravel"))
        let group3 = Group(name: "Cosmic music", description: "Электронная музыка", groupImage: UIImage(named: "cosmicmusic"))
        let group4 = Group(name: "Лучшие фотографы", description: "Фотография", groupImage: UIImage(named: "bestfoto"))
        
        let groupArray = [group1, group2, group3, group4]
        
        DataStorage.shared.usersArray = userArray
        DataStorage.shared.allGroup = groupArray
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillUsersArray()
    }
}
