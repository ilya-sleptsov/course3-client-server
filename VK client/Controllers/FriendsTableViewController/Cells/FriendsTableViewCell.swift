//
//  FriendsTableViewCell.swift
//  VK client
//
//  Created by Илья Слепцов on 20.04.2021.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    @IBOutlet weak var myImageView:UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    
    var saveUser: User?
    var saveGroup: Group?
    
    func setup() {
        backView.layer.cornerRadius = 50
        backView.layer.shadowColor = UIColor.black.cgColor
        backView.layer.shadowOffset = CGSize.zero
        backView.layer.shadowRadius = 10
        backView.layer.shadowOpacity = 0.9
        myImageView.layer.cornerRadius = 50
    }
    
    func clearCell() {
        myImageView.image = nil
        titleLabel.text = nil
        descriptionLabel.text = nil
        saveUser = nil
        saveGroup = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
        clearCell()
    }
    
    override func prepareForReuse() {
        clearCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureWithUser(user: User) {
        titleLabel.text = user.name
        
        if let age = user.age {
            descriptionLabel.text = String(age) + "лет"
        }
        
        if let image = user.avatar {
            myImageView.image = image
            
            
        }
        saveUser = user
    }
    
    func configureWithGroup(group: Group) {
        titleLabel.text = group.name
        
        if let description = group.description {
            descriptionLabel.text = description
        }
        
        if let image = group.groupImage {
            myImageView.image = image
        }
        saveGroup = group
    }
    
    @objc func reactOnTap() {
        let translation = CGAffineTransform(translationX: 60, y: 10)
        _ = CGAffineTransform(scaleX: 2, y: 2)
        _ = CGAffineTransform(rotationAngle: .pi/5)
        myImageView?.transform = translation
    }

}
