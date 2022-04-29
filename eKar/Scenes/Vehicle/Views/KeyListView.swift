//
//  KeyListView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 28.04.2022.
//

import SwiftUI

struct KeyListView: View {
    var groupedTagArray: [[TagsModel]] = []
    let tagList: [TagsModel]
    
    init(tagList: [TagsModel]) {
        self.tagList = tagList
        self.groupedTagArray = setGroupedTagArray()
    }
    
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(groupedTagArray.indices) { index in
                HStack {
                    ForEach(groupedTagArray[index].indices) { tagIndex in
                        Text(groupedTagArray[index][tagIndex].keyword)
                            .font(.system(size: 11))
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .lineLimit(1)
                            .background(Color("BlueBGColor"))
                            .foregroundColor(.black)
                            .clipShape(Capsule())
                    }
                }
            }
        }
    }
    
    func setGroupedTagArray() -> [[TagsModel]] {
        let gapWidth: CGFloat = 20
        var groupedArray: [[TagsModel]] = []
        var tempItems: [TagsModel] = []
        var width: CGFloat = 0
        
        
        for (index, tag) in tagList.enumerated() {
            let label = UILabel()
            label.text = tag.keyword
            label.sizeToFit()
            let labelWidth = label.frame.size.width + gapWidth
            
            if (width + labelWidth + gapWidth) < UIScreen.main.bounds.width {
                width += labelWidth
                tempItems.append(tag)
            } else {
                width = labelWidth
                groupedArray.append(tempItems)
                tempItems.removeAll()
                tempItems.append(tag)
            }
            
            if index == tagList.count - 1 && !tempItems.isEmpty {
                groupedArray.append(tempItems)
            }
        }
        
        return groupedArray
    }
    
}

struct KeyListView_Previews: PreviewProvider {
    static var previews: some View {
        let tags = [
            TagsModel(keyword: "test1"),
            TagsModel(keyword: "test2"),
            TagsModel(keyword: "test3"),
            TagsModel(keyword: "test4"),
            TagsModel(keyword: "test5"),
            TagsModel(keyword: "test6"),
            TagsModel(keyword: "test7")
        ]
        KeyListView(tagList: tags)
    }
}
