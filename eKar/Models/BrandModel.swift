//
//  VehicleBrandModel.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 29.04.2022.
//

import Foundation

struct BrandModel {
    var name: String
    var model: String
    var type: String
    var image: String
    
    init(name: String, model: String, type: String) {
        self.name = name
        self.model = model
        self.type = type
        self.image = name.lowercased()    
    }
}
