//
//  OnBoardView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 28.04.2022.
//

import SwiftUI

struct OnBoardView: View {
    @StateObject var viewModel: OnBoardViewModel
    @State var showingAlert = false
    @Environment(\.dismiss) var dismiss
    
    init(viewModel: OnBoardViewModel = .init()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack(spacing: 10) {
            ZStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: Constants.Icon.xMark)
                }
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                NavigationIcon()
            }
           
            Text(Constants.Text.photoTitle)
                .foregroundColor(.gray)
                .padding(10)
            PhotoView(items: viewModel.items)
            CommentTextView()
            
            Button {
                showingAlert = true
            } label: {
                Text(Constants.Text.submitButton)
                    .bold()
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 60)
                    .background(Color("AccentColor"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(10)
            .alert(Constants.Text.submitSuccess, isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            }
        }
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}
