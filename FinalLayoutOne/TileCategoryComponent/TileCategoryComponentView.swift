//
//  TileCategoryComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//

import SwiftUI

struct TileCategoryComponentView: View {
    
    var viewModel: TileCategoryComponentViewModel
    
    var body: some View {
        RatioContainer(heightRatio: 0.5){
            Image(systemName: viewModel.image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
            VStack{
                Text(viewModel.title)
                    .font(.caption)
                    .foregroundColor(.primary)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
        }
        .frame(width: 120, height: 120)
        .background(.yellow)
    }
}

#Preview {
    TileCategoryComponentView(viewModel: TileCategoryComponentViewModel(title: "Sam", image: "star.fill"))
}
