//
//  LoadingView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 29.04.2022.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .opacity(0.5)
                .ignoresSafeArea()
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: Color("AccentColor")))
                .scaleEffect(3)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
