//
//  TagsModel.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 29.04.2022.
//

import Foundation

struct TagsModel: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var keyword: String
    var isExeeded: Bool
    
    init(keyword: String) {
        self.keyword = keyword
        self.isExeeded = false
    }
}
