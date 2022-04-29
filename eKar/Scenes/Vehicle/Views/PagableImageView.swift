//
//  PagableImageView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 29.04.2022.
//

import SwiftUI

struct PagableImageView: View {
    var images: [VehicleImageModel]
    
    init(images: [VehicleImageModel]) {
        self.images = images
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(named: "AccentColor")
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(named: "AccentColor")?.withAlphaComponent(0.2)
    }
    
    var body: some View {
        TabView {
            ForEach(images) { image in
                Image(image.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct PagableImageView_Previews: PreviewProvider {
    static var previews: some View {
        let data = [
            VehicleImageModel(imageName: Constants.Icon.backRight),
            VehicleImageModel(imageName: Constants.Icon.backLeft),
            VehicleImageModel(imageName: Constants.Icon.frontLeft)
        ]
        PagableImageView.init(images: data)
    }
}
