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

    @Published var isLoading = false
    @Published var aboutModel: [AboutModel] = []
    @Published var brandDataModel = BrandModel(name: "-", model: "-", type: "-")
    @Published var vehicleYear = "-"
    
    let images = [
        VehicleImageModel(imageName: Constants.Icon.priusFront),
        VehicleImageModel(imageName: Constants.Icon.priusBack)
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
    
    func getVehicleDetail() {
        isLoading = true
        let paramValues: [(urlParameters, String)] = [
            (.key, Constants.ParamValues.apiKey),
            (.vin, Constants.ParamValues.vinNumber)
        ]
        
        service.responseService(params: paramValues) { [weak self] (result: VehicleDetailModel?) in
            self?.detailModel = result
            self?.configureDataModels()
        }
    }
    
    private func configureDataModels() {
        DispatchQueue.main.async {
            self.setBrandData()
            self.setAboutCarData()
            self.isLoading = false
        }
    }
    
    private func setBrandData() {
        guard let attributes = detailModel?.attributes else { return }
        
        brandDataModel = BrandModel(
            name: attributes.make ?? "-",
            model: attributes.model ?? "-",
            type: attributes.style ?? "-"
        )
        
        vehicleYear = attributes.year ?? "-"
    }
    
    private func setAboutCarData() {
        guard let attributes = detailModel?.attributes else { return }
        
        let engine = AboutModel.init(
            imageName: "carIcon",
            title: attributes.engine ?? "-"
        )
        
        let seatTitle = String(
            format: Constants.Text.xSeat,
            attributes.standard_seating ?? "-"
        )
        
        let seat = AboutModel.init(
            imageName: "seatIcon",
            title: seatTitle
        )
        
        let transmission = AboutModel.init(
            imageName: "manualIcon",
            title: attributes.transmission_short ?? "-"
        )
                    
        let fuel = AboutModel.init(
            imageName: "fuelIcon",
            title: attributes.fuel_capacity ?? "-"
        )
        
        aboutModel = [engine, seat, transmission, fuel]
    }
}

