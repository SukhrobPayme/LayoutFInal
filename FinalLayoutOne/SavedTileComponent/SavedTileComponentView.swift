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
        GeometryReader { geo in
            VStack(spacing: 0) {
                Image(systemName: viewModel.image)
                    .resizable()
                    .scaledToFit()
                    .padding(12)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: geo.size.height * 0.5,
                        alignment: .center
                    )
                    .background(Color.white)
                
                VStack(spacing: 4) {
                    Text(viewModel.title)
                        .font(.caption)
                    if viewModel.state.showsSubtitle {
                        Text(viewModel.subtitle)
                            .font(.caption)
                            .foregroundColor(viewModel.state.subtitleColor)
                    }
                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: geo.size.height * 0.5,
                    alignment: .center
                )
                .padding(.horizontal, 8)
                .background(Color(.darkGray))
            }
            .clipped()
        }
        .frame(width: 120, height: 120)
        .background(Color.primary.opacity(0.1))    // your .primarySet
        .cornerRadius(CornerRadiusToken.borderRadius5)
        .shadow(color: .gray.opacity(0.5), radius: 3, x: 0, y: 3)
        .onTapGesture { onTap?() }
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
