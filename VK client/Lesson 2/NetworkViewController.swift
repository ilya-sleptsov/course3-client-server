//
//  NetworkViewController.swift
//  VK client
//
//  Created by Илья Слепцов on 31.05.2021.
//

import UIKit
import Alamofire

class NetworkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func firstRequest() {
        
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        
        guard let url = URL(string: "http://samples.openweathermap.org/data/2.5/forecast?q=Moscow,DE&appid=b1b15e88fa797225412429c1c50c122a1)") else {return}
        
        let task = session.dataTask(with: url) {data, response, error in
            
            let json = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
            print(json as Any)
        }
        task.resume()
    }
    
    /* Конструировать URL
     Настраиваем запрос - URLRequest
     POST-запрос - создание объекта, параметры определяются через URL
     */
    
    func secondRequest() {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        
        var urlConstructor = URLComponents()
        urlConstructor.scheme = "http"
        urlConstructor.host = "jsonplaceholder.typecode.com"
        urlConstructor.path = "/posts"
        
        urlConstructor.queryItems = [
            URLQueryItem(name: "title", value: "foo"),
            URLQueryItem(name: "body", value: "bar"),
            URLQueryItem(name: "userid", value: "1")
        ]
        
        var request = URLRequest(url: urlConstructor.url!)
        request.httpMethod = "POST"
        
        let task = session.dataTask(with: request) { data, response, error in
            let json = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
            print(json as Any)
        }
        
        task.resume()
    }
    
    func thirdRequest() {
        
    }
    
    func forthRequest() {
        
    }
    
    func fifthRequest() {
        
    }


}
