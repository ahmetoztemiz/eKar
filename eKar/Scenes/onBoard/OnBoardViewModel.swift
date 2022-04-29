//
//  OnBoardViewModel.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 28.04.2022.
//

import Foundation

class OnBoardViewModel: ObservableObject {
    var items = [
        AboutModel.init(imageName: Constants.Icon.frontLeft, title: Constants.Text.frontLeft),
        AboutModel.init(imageName: Constants.Icon.frontRight, title: Constants.Text.frontRight),
        AboutModel.init(imageName: Constants.Icon.backLeft, title: Constants.Text.backLeft),
        AboutModel.init(imageName: Constants.Icon.backRight, title: Constants.Text.backRight)
    ]
}
