//
//  SavedGroupComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//

import SwiftUI

struct SavedCollectionComponentView<Content: View>: View {
    var tiles: [SavedTileComponentViewModel]
    var content: (SavedTileComponentViewModel, Int) -> Content
    var onAddTap: () -> Void = {}
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(Array(tiles.enumerated()), id: \.offset) { index, tile in
                    content(tile, index)
                }
                AddSavedTileView(onTap: onAddTap)
            }
        }
    }
}



struct SavedCollectionComponentView_Previews: PreviewProvider {
    static var previews: some View {
        // Simple mock session: raw titles and images
        let sampleItems = [
            SavedTileComponentViewModel(title: "One", subtitle: "100", image: "star.fill", state: .balance),
            SavedTileComponentViewModel(title: "Two", subtitle: "200", image: "heart.fill", state: .usual),
            SavedTileComponentViewModel(title: "Three", subtitle: "300", image: "bolt.fill", state: .debt)
        ]

        return SavedCollectionComponentView(
            tiles: sampleItems,
            content: { tile, index in
                SavedTileComponentView(viewModel: tile, onTap: {
                    print("Tile #\(index)")
                })
            },
            onAddTap: {print("Add")}
        )
    }
}
