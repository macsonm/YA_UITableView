//
//  RecipeTableViewCell.swift
//  YA_UITableView
//
//  Created by Maxim M on 19.01.2022.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var recipeTitleLabel: UILabel!
    @IBOutlet weak var recipeIngredientsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()        //типа viewDidLoad 
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
