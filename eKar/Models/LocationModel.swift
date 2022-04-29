//
//  LocationModel.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 27.04.2022.
//

import Foundation
import MapKit

struct Location: Identifiable {
    var id: String
    var latitude: Double
    var longitude: Double
    var location: CLLocation
    
    init(id: String, latitude: Double, longitude: Double) {
        self.id = id
        self.latitude = latitude
        self.longitude = longitude
        self.location = CLLocation(latitude: latitude, longitude: longitude)
    }
}
