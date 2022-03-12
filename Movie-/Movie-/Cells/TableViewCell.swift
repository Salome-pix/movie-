//
//  TableViewCell.swift
//  Movie-
//
//  Created by Mcbook Pro on 07.03.22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var favoritedImage: UIImageView!
    
    @IBOutlet weak var favoritedLabel: UILabel!
    

    func setItems(model: Movie){
        favoritedImage.image = model.image
        favoritedLabel.text = model.name
    }
    
}
