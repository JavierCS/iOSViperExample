//
//  DogListTableViewCell.swift
//  iOSViperExample
//
//  Created by jcruzsa on 20/10/21.
//

import UIKit

class DogListTableViewCell: UITableViewCell {

    @IBOutlet weak var cardContainer: UIView!
    @IBOutlet weak var petImage: UIImageView!
    @IBOutlet weak var petLabel: UILabel!
    
    var pet: PetEntity?
        
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cardContainer.addShadow()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setPetData(_ dog: PetEntity) {
        self.pet = dog
        self.petLabel.text = dog.name
    }
    
}
