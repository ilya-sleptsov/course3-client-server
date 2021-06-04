//
//  Session.swift
//  VK client
//
//  Created by Илья Слепцов on 27.05.2021.
//

import UIKit

class Session: NSObject {
    
    static let shared = Session()
    
    private override init() {
        super.init()
    }
    
        var token: String = ""
        var userID: Int = 0
    
}
