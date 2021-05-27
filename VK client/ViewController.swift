//
//  ViewController.swift
//  VK client
//
//  Created by Илья Слепцов on 27.04.2021.
//

import Foundation
import UIKit

class RoundViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myBackView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        
        myBackView.backgroundColor = UIColor.systemRed
        myBackView.layer.cornerRadius = myImageView.frame.size.width / 2
        myBackView.layer.shadowColor = UIColor.black.cgColor
        myBackView.layer.shadowOffset = CGSize.zero
        myBackView.layer.shadowRadius = 10
        myBackView.layer.shadowOpacity = 0.9

        myImageView.image = UIImage(named: "5")
        myImageView.layer.cornerRadius = myImageView.frame.size.width / 2

    }


}

