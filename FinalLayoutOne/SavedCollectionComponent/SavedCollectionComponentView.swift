//
//  SavedGroupComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//

import SwiftUI

struct CategoryCollectionComponentView<Content: View>: View {
    var tiles: [SavedTileComponentViewModel]
    var content: (SavedTileComponentViewModel) -> Content
    var onAddTap: () -> Void

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(tiles) { tile in
                    content(tile)
                }
                AddSavedTileView(onTap: onAddTap)    // <-- pass it here
                    .padding(.leading, 0)
            }
            .frame(maxHeight: 140)
        }
    }
}

// MARK: - Preview
#Preview {
    let sampleItems = [
        SavedTileComponentViewModel(title: "One", subtitle: "722", image: "document", state: .balance),
        SavedTileComponentViewModel(title: "Two", subtitle: "722", image: "document", state: .debt),
        SavedTileComponentViewModel(title: "Three", subtitle: "722", image: "document", state: .usual)
    ]

    // Provide onAddTap to see output in console when running
    CategoryCollectionComponentView(
        tiles: sampleItems,
        content: { tile in
            SavedTileComponentView(viewModel: tile, onTap: { print("Tapped tile: \(tile.title)") })
        },
        onAddTap: { print("Sims") }   // <-- onAddTap closure here
    )
    .padding()
}
