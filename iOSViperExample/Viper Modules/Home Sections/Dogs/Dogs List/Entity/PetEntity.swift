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
    var description: String?
    var age: String?
    var sex: String?
    var breed: String?
    var imageUrlString: String?
    var image: UIImage?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case description = "description"
        case age = "age"
        case sex = "sex"
        case breed = "breed"
        case imageUrlString = "imageUrl"
    }
}
