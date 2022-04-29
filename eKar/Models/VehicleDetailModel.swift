//
//  VehicleDetailModel.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 24.04.2022.
//

import Foundation

struct VehicleDetailModel: Codable {
    var success: Bool?
    var attributes: VehicleAttributes?
}

struct VehicleAttributes: Codable {
    var year: String?
    var make: String?
    var model: String?
    var trim: String?
    var style: String?
    var type: String?
    var size: String?
    var category: String?
    var fuel_type: String?
    var fuel_capacity: String?
    var engine: String?
    var engine_size: String?
    var engine_cylinders: String?
    var transmission: String?
    var transmission_short: String?
    var transmission_type: String?
    var transmission_speeds: String?
    var gross_vehicle_weight_rating: String?
    var overall_height: String?
    var overall_length: String?
    var overall_width: String?
    var wheelbase_length: String?
    var standard_seating: String?
    var optional_seating: String?
}

