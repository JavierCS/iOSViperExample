//
//  PetEntity.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation
import UIKit

class PetEntity: Codable {
    var name: String?
    var age: String?
    var sex: String?
    var race: String?
    var imageUrlString: String?
    var image: UIImage?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case age = "age"
        case sex = "sex"
        case race = "race"
        case imageUrlString = "imageUrl"
    }
}
