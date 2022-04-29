//
//  MapViewModel.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 23.04.2022.
//

import Foundation
import MapKit

extension MapView {
    @MainActor class MapViewModel: ObservableObject {
        @Published var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        func getLocations() -> [Location] {
            let locations = [Location.init(id: "1", latitude: 51.5, longitude: -0.12)]
            
            return locations
        }
    }
}
