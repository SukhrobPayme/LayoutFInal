//
//  SavedTileComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob on 07/05/25.
//

import SwiftUI

struct SavedTileComponentView: View {
    var viewModel: SavedTileComponentViewModel
    
    var body: some View {
        RatioContainer {
            Image(systemName: viewModel.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .layoutPriority(1)
                VStack{
                    Text(viewModel.title)
                        .font(.caption)
                        .foregroundColor(.primary)
                    Text(viewModel.subtitle)
                        .font(.caption)
                        .foregroundColor(.cyan)
                }
            }
        .frame(width: 120, height: 120)
    }
}

#Preview {
    SavedTileComponentView(viewModel: SavedTileComponentViewModel(title: "Samich", subtitle: "974052800", image: "star.fill"))
}
