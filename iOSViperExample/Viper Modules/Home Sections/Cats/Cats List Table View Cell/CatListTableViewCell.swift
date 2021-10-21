//
//  CatListTableViewCell.swift
//  iOSViperExample
//
//  Created by jcruzsa on 20/10/21.
//

import UIKit

class CatListTableViewCell: UITableViewCell {

    //MARK: - UIElements
    @IBOutlet weak var cardContentView: UIView!
    @IBOutlet weak var catImageView: UIImageView!
    @IBOutlet weak var catBlurView: UIVisualEffectView!
    @IBOutlet weak var catNameLabel: UILabel!
    
    private var pet: PetEntity!
    
    //MARK: - Initialization Code
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.cardContentView.addShadow()
        self.catImageView.roundCorners()
        self.catBlurView.roundCorners(maskedCorners: [
            .layerMinXMinYCorner,
            .layerMaxXMinYCorner
        ])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setPetData(_ cat: PetEntity) {
        self.pet = cat
        self.catNameLabel.text = cat.name
    }
}
