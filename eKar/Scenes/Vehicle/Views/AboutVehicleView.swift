//
//  AboutVehicleView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 29.04.2022.
//

import SwiftUI

struct AboutVehicleView: View {
    private let cellSize = (UIScreen.main.bounds.width - 70) / 4
    let mainTitle: String
    let items: [AboutModel]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(mainTitle)
                .bold()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(items, id: \.id) { item in
                        VStack {
                            Image(item.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            
                            Text(item.title)
                                .font(.system(size: 12))
                                .minimumScaleFactor(0.5)
                                .lineLimit(1)
                        }
                        .padding(10)
                        .frame(width: cellSize, height: cellSize)
                        .background(Color("BlueBGColor"))
                        .cornerRadius(20)
                        
                        
                    }
                }
            }
            .frame(height: 100)
        }
    }
}

struct AboutVehicleView_Previews: PreviewProvider {
    static var previews: some View {
        let items = [
            AboutModel.init(imageName: Constants.Icon.car, title: "3L Engine"),
            AboutModel.init(imageName: Constants.Icon.seat, title: "2 Seats"),
            AboutModel.init(imageName: Constants.Icon.manual, title: "Manual"),
            AboutModel.init(imageName: Constants.Icon.fuel, title: "Petrol")
        ]
        AboutVehicleView(mainTitle: Constants.Text.aboutTitle, items: items)
    }
}
