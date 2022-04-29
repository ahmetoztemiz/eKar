//
//  MapView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 23.04.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var viewModel = MapViewModel()
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $viewModel.mapRegion, annotationItems: viewModel.getLocations()) { item in
                MapAnnotation(coordinate: item.location.coordinate) {
                    VStack {
                        NavigationLink(destination: VehicleView()) {
                            Image(Constants.Icon.marker)
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    NavigationIcon()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        
        return MapView()
    }
}
