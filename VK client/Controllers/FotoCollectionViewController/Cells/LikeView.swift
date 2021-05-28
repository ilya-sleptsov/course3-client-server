//
//  LikeView.swift
//  VK client
//
//  Created by Илья Слепцов on 04.05.2021.
//

import UIKit

class LikeView: UIViewController {
    
    @IBOutlet weak var likeLabel:UILabel!
    @IBOutlet weak var likeButton:UIButton!
    
    
    var isLiked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func pressLikeButton(_ sender: Any){
            if isLiked {
                likeLabel.text = "1"
                likeButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                likeButton.tintColor = UIColor.systemRed
            }
            else {
                likeLabel.text = "0"
                likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
                likeButton.tintColor = UIColor.black
            }
            isLiked = !isLiked
        }
    }
}

 
