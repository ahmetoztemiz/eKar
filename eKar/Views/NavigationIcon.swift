//
//  NavigationLogo.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 28.04.2022.
//

import SwiftUI

struct NavigationIcon: View {
    var body: some View {
        Image("appIcon")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(5)
            .frame(width: 100, height: 40)
    }
}

struct NavigationIcon_Previews: PreviewProvider {
    static var previews: some View {
        NavigationIcon()
    }
}
