//
//  SliderView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 29.04.2022.
//

import SwiftUI

struct SliderView: View {
    private let sliderMaxAmount = UIScreen.main.bounds.width - 60
    @State var offset: CGFloat = 0
    private let indicatorNumbers: [Int] = [1, 3, 6, 9]
    
    var onSliderChange: (String) -> ()
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
            Capsule()
                .fill(.white)
                .frame(height: 10)
                .background(Capsule().stroke(Color("AccentColor"), lineWidth: 3))
            
            Capsule()
                .fill(Color("AccentColor"))
                .frame(width: offset + 20, height: 10)
            
            Circle()
                .fill(.white)
                .frame(width: 25, height: 25)
                .background(Circle().stroke(Color("AccentColor"), lineWidth: 15))
                .offset(x: offset)
                .gesture(DragGesture().onChanged({ value in
                    if value.location.x > 0 && value.location.x < UIScreen.main.bounds.width - 60 {
                        offset = value.location.x
                        getSliderValue()
                    }
                }))
        }
        
        HStack(spacing: 100) {
            ForEach(indicatorNumbers, id: \.self) { number in
                Text("\(number)")
                    .font(.system(size: 12))
                    .bold()
            }
        }
    }
    
    func getSliderValue() {
        let percent = offset / sliderMaxAmount
        let selectedValue = Int(percent * CGFloat(indicatorNumbers.last ?? 1)) + 1
        
        onSliderChange(String(selectedValue))
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView { _ in }
    }
}
