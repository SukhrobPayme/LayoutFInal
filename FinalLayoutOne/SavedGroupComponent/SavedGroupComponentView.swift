//
//  SavedGroupComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//

import SwiftUI

struct SavedGroupComponentView<Content: View>: View {
    
    var tiles: [SavedTileComponentViewModel]
    var content: (SavedTileComponentViewModel) -> Content
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(Array(tiles.enumerated()), id: \.offset) { _, tile in
                    content(tile)
                }
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleItems = [
            SavedTileComponentViewModel(title: "One", subtitle: "722", image: "document"),
            SavedTileComponentViewModel(title: "Two", subtitle: "722", image: "document"),
            SavedTileComponentViewModel(title: "Three", subtitle: "722", image: "document"),
            SavedTileComponentViewModel(title: "Three", subtitle: "722", image: "document"),
            SavedTileComponentViewModel(title: "Three", subtitle: "722", image: "document")
        ]
        
        SavedGroupComponentView(tiles: sampleItems) { tile in
            SavedTileComponentView(viewModel: tile)
        }
    }
}
