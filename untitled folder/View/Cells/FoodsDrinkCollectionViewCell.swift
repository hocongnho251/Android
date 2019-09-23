//
//  FoodsDrinkCollectionViewCell.swift
//  Restaurant
//
//  Created by Nguyen on 9/19/19.
//  Copyright © 2019 Nguyen. All rights reserved.
//

import UIKit

class FoodsDrinkCollectionViewCell: UICollectionViewCell {
 @IBOutlet weak var image: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 20    }

}
