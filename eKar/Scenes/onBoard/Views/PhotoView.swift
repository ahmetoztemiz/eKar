//
//  PhotoView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 28.04.2022.
//

import SwiftUI

struct PhotoView: View {
    @State var showingAlert = false
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let items: [AboutModel]
    
    var body: some View {
        GeometryReader { geomety in
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(items, id: \.self) { item in
                        VStack {
                            Image(item.imageName)
                                .resizable()
                                .padding(10)
                                .aspectRatio(contentMode: .fit)
                            
                            Text(item.title)
                                .padding(5)
                                .lineLimit(1)
                                .foregroundColor(.gray)
                        }
                        .onTapGesture {
                            showingAlert = true
                        }
                        .alert(Constants.Text.takePhoto, isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
                    }
                }
            }
            .border(.gray)
            .padding(10)
            .frame(width: geomety.size.width, height: geomety.size.height - 20)
            
            
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        let items = [
            AboutModel.init(imageName: Constants.Icon.frontLeft, title: Constants.Text.frontLeft),
            AboutModel.init(imageName: Constants.Icon.frontRight, title: Constants.Text.frontRight),
            AboutModel.init(imageName: Constants.Icon.backLeft, title: Constants.Text.backLeft),
            AboutModel.init(imageName: Constants.Icon.backRight, title: Constants.Text.backRight)
        ]
        PhotoView(items: items)
    }
}
