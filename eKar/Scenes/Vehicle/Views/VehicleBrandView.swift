//
//  VehicleBrandView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 28.04.2022.
//

import SwiftUI

struct VehicleBrandView: View {
    let brandModel: BrandModel
    
    var body: some View {
        HStack(spacing: 10.0) {
            Image(brandModel.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            VStack(alignment: .leading) {
                HStack() {
                    Text(brandModel.name)
                        .bold()
                    Text(brandModel.model)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(brandModel.type)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct VehicleBrandView_Previews: PreviewProvider {
    static var previews: some View {
        let data = BrandModel(name: "Nissan", model: "Micra", type: "Hatchback")
        VehicleBrandView(brandModel: data)
    }
}
