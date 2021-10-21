//
//  DogListTableViewCell.swift
//  iOSViperExample
//
//  Created by jcruzsa on 20/10/21.
//

import UIKit

class DogListTableViewCell: UITableViewCell {

    @IBOutlet weak var cardContainer: UIView!
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var dogNameLabel: UILabel!
    @IBOutlet weak var dogAgeLabel: UILabel!
    @IBOutlet weak var dogSexLabel: UILabel!
    @IBOutlet weak var dogRaceLabel: UILabel!
    @IBOutlet weak var dogDescriptionLabel: UILabel!
    
    private var pet: PetEntity?
        
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
        self.dogNameLabel.text = dog.name
        self.dogAgeLabel.text = dog.age
        self.dogSexLabel.text = dog.sex
        self.dogRaceLabel.text = dog.race
        self.dogDescriptionLabel.text = dog.description
    }
}
