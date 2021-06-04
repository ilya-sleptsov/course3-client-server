//
//  VKService.swift
//  VK client
//
//  Created by Илья Слепцов on 02.06.2021.
//

import Foundation
import Alamofire

class VKService {
    
    private let baseURL = "https://api.vk.com/method/"
  
    
   
    func getFriendsList() {
        let path = "friends.get"
        let params: Parameters = [
            "access_token": Session.shared.token,
            "fields": "city",
            "fields": "photo_200_orig"
        ]
        
        let url = baseURL + path
        
        AF.request(url, method: .get, parameters: params).responseJSON { response in
            print(response.value as Any)
        }
    }
    
    
   
    
    func getPhotos() {
        let path = "photos.get"
        let params: Parameters = [
            "access_token": Session.shared.token,
            "rev": "0",
            "extended": "1"
        ]
        
        let url = baseURL + path
        
        AF.request(url, method: .get, parameters: params).responseJSON { response in
            print(response.value as Any)
    }
}
    
    func getGroups() {
        let path = "groups.get"
        let params: Parameters = [
            "access_token": Session.shared.token,
            "fields": "description"
        ]
        
        let url = baseURL + path
        
        AF.request(url, method: .get, parameters: params).responseJSON { response in
            print(response.value as Any)
        }
    }
}
