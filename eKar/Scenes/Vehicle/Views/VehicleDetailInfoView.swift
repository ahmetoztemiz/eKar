//
//  VehicleDetailView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 29.04.2022.
//

import SwiftUI

struct VehicleDetailInfoView: View {
    var year: String
    let colors = [Color.black, Color.blue, Color.red, Color.gray]
    
    init(year: String) {
        self.year = year
    }
    
    var body: some View {
        HStack {
            Text(String(format: Constants.Text.yearX, year))
                .font(.system(size: 12))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 3) {
                Text(Constants.Text.availableColors)
                    .font(.system(size: 12))
                
                ForEach(colors, id: \.self) { color in
                    Circle()
                        .fill(color)
                        .frame(width: 10, height: 10)
                }
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct VehicleDetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleDetailInfoView(year: "2020")
    }
}
