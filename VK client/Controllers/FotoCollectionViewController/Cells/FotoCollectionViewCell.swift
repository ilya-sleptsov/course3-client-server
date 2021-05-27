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

    var savedImage: UIImage?
    var pressCount = true
    
    func clearCell() {
        fotoImage.image = nil
        savedImage = nil
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func prepareForReuse() {
        clearCell()
    }
    func configure(image: UIImage) {
        fotoImage.image = image
        savedImage = image
        fotoImage.translatesAutoresizingMaskIntoConstraints = true
    }
    
    @objc func reactOnTap() {
        
        if pressCount {
        
        let translation = CGAffineTransform(scaleX: 2, y: 2)

        fotoImage.transform = translation
            
            
        } else {
            fotoImage.transform = .identity
        }
        
        pressCount = !pressCount

  
    
    
//    func collectionView (_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//
//        return CGFloat(10)
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//
//        return CGFloat(10)
//    }

}
}

