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
        @Published var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
        
        func getLocations() -> [Location] {
            let locations = [Location.init(id: "1", latitude: 51.5, longitude: -0.12),
                             Location.init(id: "1", latitude: 51.51, longitude: -0.122),
                             Location.init(id: "1", latitude: 51.52, longitude: -0.121)]
            
            return locations
        }
    }
}
