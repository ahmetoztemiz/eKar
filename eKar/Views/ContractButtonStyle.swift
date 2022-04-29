//
//  ContractButtonStyle.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 29.04.2022.
//

import SwiftUI

struct ContractButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxHeight: 30)
            .background(.white)
            .foregroundColor(Color("AccentColor"))
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color("AccentColor"), lineWidth: 2)
            )
            .padding(10)
            .font(.system(size: 11, weight: .bold))
    }
}


