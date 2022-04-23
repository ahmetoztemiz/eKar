//
//  VehicleViewModel.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 23.04.2022.
//

import Foundation

class VehicleViewModel: ObservableObject {
    private var test = "Test"
    
    func getText() -> String {
        return test
    }
}
