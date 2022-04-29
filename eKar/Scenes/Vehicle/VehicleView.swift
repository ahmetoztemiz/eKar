//
//  VehicleView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 23.04.2022.
//

import SwiftUI

struct VehicleView: View {
    @StateObject var viewModel: VehicleViewModel
    @State private var showingSheet = false
    
    init(viewModel: VehicleViewModel = .init()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ScrollView {
                    Text(viewModel.getText()).onAppear {
                        viewModel.getVehicleDetail()
                    }
                    
                    PagableImageView(images: viewModel.images)
                        .frame(height: 200)
        
                    VehicleDetailInfoView()
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    
                    ContractSliderView()
                    
                    AboutVehicleView(mainTitle: Constants.Text.aboutTitle, items: viewModel.items)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    
                    KeyListView(tagList: viewModel.tagList)
                }
                
                Rectangle()
                    .fill(.gray)
                    .frame(height: 1)
                
                VehicleBrandView(brandModel: viewModel.brandData)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                
                Button(Constants.Text.proceedButton) {
                    showingSheet.toggle()
                }
                .padding(10)
                .buttonStyle(ProceedButtonStyle())
                .frame(height: 80)
                .sheet(isPresented: $showingSheet) {
                    OnBoardView()
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                NavigationIcon()
            }
        }
    }
}

struct VehicleView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleView()
    }
}
