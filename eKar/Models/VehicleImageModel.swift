//
//  VehicleImageModel.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 29.04.2022.
//

import Foundation

struct VehicleImageModel: Identifiable {
    let id: String = UUID().uuidString
    var imageName: String
}
