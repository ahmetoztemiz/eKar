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
            ZStack {
                VStack {
                    ScrollView {
                        VStack {
                        PagableImageView(images: viewModel.images)
                            .frame(height: 200)
                        
                        VehicleDetailInfoView(year: viewModel.vehicleYear)
                            .padding(.horizontal, 20)
                        
                        ContractSliderView()
                        }
                        .background(Color("BlueBGColor"))
                        
                        AboutVehicleView(mainTitle: Constants.Text.aboutTitle, items: viewModel.aboutModel)
                            .padding(.horizontal, 20)
                        
                        KeyListView(tagList: viewModel.tagList)
                            .padding(.horizontal, 20)
                    }
                    
                    Rectangle()
                        .fill(.gray)
                        .frame(height: 1)
                    
                    VehicleBrandView(brandModel: viewModel.brandDataModel)
                        .padding(.horizontal, 20)
                    
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
                
                if viewModel.isLoading {
                    LoadingView()
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                NavigationIcon()
            }
        }
        .onAppear {
            viewModel.getVehicleDetail()
        }
    }
}

struct VehicleView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleView()
    }
}
