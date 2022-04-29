//
//  VehicleViewModel.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 23.04.2022.
//

import Foundation

class VehicleViewModel: ObservableObject {
    private var service: BaseServiceProtocol
    private var detailModel: VehicleDetailModel?
    private var test = "Test"

    let items = [
       AboutModel.init(imageName: "carIcon", title: "3L Engine"),
       AboutModel.init(imageName: "seatIcon", title: "2 Seats"),
       AboutModel.init(imageName: "manualIcon", title: "Manual"),
       AboutModel.init(imageName: "fuelIcon", title: "Petrol")
   ]
    
    let brandData = BrandModel(name: "Nissan", model: "Micra", type: "Hatchback")
    
    let images = [
        VehicleImageModel(imageName: Constants.Icon.backRight),
        VehicleImageModel(imageName: Constants.Icon.backLeft),
        VehicleImageModel(imageName: Constants.Icon.frontLeft)
    ]
    
    let tagList = [
        TagsModel(keyword: "Keyless Entry"),
        TagsModel(keyword: "Bluetooth"),
        TagsModel(keyword: "Power windows"),
        TagsModel(keyword: "ABS"),
        TagsModel(keyword: "AUX/USB"),
        TagsModel(keyword: "AM / FM")
    ]
    
    
    init(service: BaseServiceProtocol = BaseService()) {
        self.service = service
    }
    
    func getText() -> String {
        return test
    }
    
    func getVehicleDetail() {
        let paramValues: [(urlParameters, String)] = [(.key, Constants.ParamValues.apiKey),
                                                 (.vin, Constants.ParamValues.vinNumber)]
        
        service.responseService(params: paramValues) { [weak self] (result: VehicleDetailModel?) in
            self?.detailModel = result
        }
    }
}

