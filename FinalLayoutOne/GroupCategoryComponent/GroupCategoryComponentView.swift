//
//  GroupCategoryComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//

import SwiftUI

struct GroupCategoryComponentView<Content: View>: View {
    var tiles: [TileCategoryComponentViewModel]
    var content: (TileCategoryComponentViewModel) -> Content
    
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

struct GroupCategoryComponentView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleItems = [
            TileCategoryComponentViewModel(title: "One", image: "document"),
            TileCategoryComponentViewModel(title: "Two", image: "document"),
            TileCategoryComponentViewModel(title: "Three", image: "document"),
            TileCategoryComponentViewModel(title: "Three", image: "document"),
            TileCategoryComponentViewModel(title: "Three", image: "document")
        ]
        
        GroupCategoryComponentView(tiles: sampleItems) { tile in
            TileCategoryComponentView(viewModel: tile)
        }
    }
}
