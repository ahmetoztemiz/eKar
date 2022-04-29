//
//  SliderView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 29.04.2022.
//

import SwiftUI

struct ContractSliderView: View {
    @State var selectedMonth: String = "1"
    @State private var showingAlert = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(Constants.Text.basePrice)
                        .bold()
                        .font(.system(size: 15))
                    
                    HStack(alignment: .lastTextBaseline) {
                        Text("1500")
                            .font(.system(size: 25))
                            .bold()
                        
                        Text(Constants.Text.priceMonth)
                            .font(.system(size: 15))
                            .bold()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .trailing, spacing: 5) {
                    Text(Constants.Text.contractLength)
                        .bold()
                        .font(.system(size: 15))
                    
                    HStack(alignment: .lastTextBaseline) {
                        Text(selectedMonth)
                            .font(.system(size: 25))
                            .bold()
                        
                        Text(Constants.Text.months)
                            .font(.system(size: 15))
                            .bold()
                    }
                }
                
            }
            .frame(maxWidth: .infinity)
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(Constants.Text.tenure.uppercased())
                        .font(.system(size: 11))
                    
                    Text(Constants.Text.rentMonthRange)
                        .font(.system(size: 18))
                        .bold()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(String(format: Constants.Text.savingMoney.uppercased(), 1500))
                    .bold()
                    .padding(10)
                    .background(Color("DiscountColor"))
                    .foregroundColor(.white)
                    .lineLimit(0)
                    .cornerRadius(40)
                    .font(.system(size: 12))
                    .frame(height: 15)
                
            }
            .frame(maxWidth: .infinity)
            
            SliderView(onSliderChange: { value in
                onSliderChange(value: value)
            })
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(Constants.Text.bookingFee.uppercased())
                        .bold()
                        .font(.system(size: 11))
                    
                    HStack(alignment: .lastTextBaseline) {
                        Text("AED")
                            .font(.system(size: 15))
                            .bold()
                        
                        Text("120")
                            .font(.system(size: 25))
                            .bold()
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Button(Constants.Text.howContractWorks) {
                    showingAlert = true
                }
                .buttonStyle(ContractButtonStyle())
                .alert(Constants.Text.howContractWorks, isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { }
                }
                
            }
        }
        .frame(maxWidth: .infinity)
        .padding(20)
    }
    
    func onSliderChange(value: String) {
        selectedMonth = value
    }
}

struct ContractSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ContractSliderView()
    }
}
