//
//  VehicleView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 23.04.2022.
//

import SwiftUI

struct VehicleView: View {
    @StateObject var viewModel: VehicleViewModel
    
    init(viewModel: VehicleViewModel = .init()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        Text(viewModel.getText())
    }
}

struct VehicleView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleView()
    }
}
