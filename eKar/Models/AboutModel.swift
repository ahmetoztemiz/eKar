//
//  AboutModel.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 29.04.2022.
//

import Foundation

struct AboutModel: Hashable {
    var id: String
    var imageName: String
    var title: String
    
    init(imageName: String, title: String) {
        self.id = UUID().uuidString
        self.imageName = imageName
        self.title = title
    }
}
