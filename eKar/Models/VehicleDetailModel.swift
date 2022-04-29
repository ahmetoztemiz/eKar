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
    var drivetrain: String?
    var anti_brake_system: String?
    var steering_type: String?
    var curb_weight: String?
    var gross_vehicle_weight_rating: String?
    var overall_height: String?
    var overall_length: String?
    var overall_width: String?
    var wheelbase_length: String?
    var standard_seating: String?
    var invoice_price: String?
    var delivery_charges: String?
    var manufacturer_suggested_retail_price: String?
    var production_seq_number: String?
    var front_brake_type: String?
    var rear_brake_type: String?
    var turning_diameter: String?
    var front_suspension: String?
    var rear_suspension: String?
    var front_spring_type: String?
    var rear_spring_type: String?
    var tires: String?
    var front_headroom: String?
    var rear_headroom: String?
    var front_legroom: String?
    var rear_legroom: String?
    var front_shoulder_room: String?
    var rear_shoulder_room: String?
    var front_hip_room: String?
    var rear_hip_room: String?
    var curb_weight_manual: String?
    var ground_clearance: String?
    var track_front: String?
    var track_rear: String?
    var cargo_length: String?
    var width_at_wheelwell: String?
    var width_at_wall: String?
    var depth: String?
    var optional_seating: String?
    var passenger_volume: String?
    var cargo_volume: String?
    var standard_towing: String?
    var maximum_towing: String?
    var standard_payload: String?
    var maximum_payload: String?
    var maximum_gvwr: String?
    var timestamp: String?
}

