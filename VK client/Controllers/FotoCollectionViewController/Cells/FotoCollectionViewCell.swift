//
//  FotoCollectionViewCell.swift
//  VK client
//
//  Created by Илья Слепцов on 22.04.2021.
//
import Foundation
import UIKit

class FotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var fotoImage: UIImageView!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    
    var isLiked = false
    var savedImage: UIImage?
   
    
    func clearCell() {
        fotoImage.image = nil
        savedImage = nil
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        clearCell()
    }
    override func prepareForReuse() {
        clearCell()
    }
    func configure(image: UIImage) {
        fotoImage.image = image
        savedImage = image
        fotoImage.translatesAutoresizingMaskIntoConstraints = true
    }
    
    
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


