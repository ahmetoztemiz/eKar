//
//  MapView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 23.04.2022.
//

import SwiftUI

struct MapView: View {
    @StateObject var viewModel: MapViewModel
    
    init(viewModel: MapViewModel = .init()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        Text(viewModel.test)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = MapViewModel()
        viewModel.test = "DEFG"
        
        return MapView(viewModel: viewModel)
    }
}
