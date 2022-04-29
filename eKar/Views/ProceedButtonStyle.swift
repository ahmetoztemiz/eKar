//
//  ProceedButton.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 28.04.2022.
//

import SwiftUI

struct ProceedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 60)
            .background(Color("AccentColor"))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
    
}
