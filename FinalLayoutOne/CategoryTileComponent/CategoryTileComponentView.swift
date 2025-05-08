//
//  TileCategoryComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//

import SwiftUI

struct TileCategoryComponentView: View {
    
    var viewModel: TileCategoryComponentViewModel
    var onTap: (() -> Void)?
    
    var body: some View {
        RatioContainer(heightRatio: 0.5){
            Image(systemName: viewModel.image)
                .resizable()
                .scaledToFit()
                .padding(.top, 16)
            VStack{
                Text(viewModel.title)
                    .font(.caption)
                    .foregroundColor(.primary)
            }
            .padding(.top)
        }
        .frame(width: 120, height: 120)
        .background(.primarySet)
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.5), radius: 3, x: 0, y: 3)
        .onTapGesture {
            onTap?()
        }
    }
}


//Preview
#Preview {
    TileCategoryComponentView(viewModel: TileCategoryComponentViewModel(title: "Мобильная Связь", image: "star.fill"), onTap: {print("Tapped")})
}
