//
//  SavedTileComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob on 07/05/25.
//

import SwiftUI

struct SavedTileComponentView: View {
    var viewModel: SavedTileComponentViewModel
    var onTap: (() -> Void)?
    
    var body: some View {
        RatioContainer {
            Image(systemName: viewModel.image)
                .resizable()
                .scaledToFit()
                .padding()
            
            VStack(spacing: 4) {
                Text(viewModel.title)
                    .font(.caption)
                    .foregroundColor(.primary)
                
                if viewModel.state.showsSubtitle {
                    Text(viewModel.subtitle)
                        .font(.caption)
                        .foregroundColor(viewModel.state.subtitleColor)
                }
            }
            .padding(.bottom, 8)
        }
        .frame(width: 120, height: 120)
        .background(.primarySet)
        .cornerRadius(CornerRadiusToken.borderRadius5)
        .shadow(color: .gray.opacity(0.5), radius: 3, x: 0, y: 3)
        .onTapGesture {
            onTap?()
        }
    }
}


//Preview
#Preview {
    SavedTileComponentView(viewModel: SavedTileComponentViewModel(
        title: "Samich",
        subtitle: "974052800",
        image: "star.fill",
        state: SavedTileComponentViewModel.ViewState.balance))
}
