//
//  GroupCategoryComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//

import SwiftUI

struct CategoryCollectionComponentView<Content: View>: View {
    var tiles: [CategoryTileVM]
    var content: (CategoryTileVM, Int) -> Content

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(Array(tiles.enumerated()), id: \.offset) { index, tile in
                    content(tile, index)
                }
            }
        }
    }
}

//struct CategoryCollectionComponentView_Previews: PreviewProvider {
//    static var previews: some View {
//        // Simple mock session: raw titles and images
//        let sampleItems = [
//            CategoryTileVM(category: "One", didTap: "star.fill"),
//            CategoryTileVM(title: "Two", image: "star.fill"),
//            CategoryTileVM(title: "Three", image: "bolt.fill"),
//            CategoryTileVM(title: "Three", image: "bolt.fill"),
//            CategoryTileVM(title: "Three", image: "bolt.fill")
//        ]
//
//        return CategoryCollectionComponentView(
//            tiles: sampleItems,
//            content: { tile, index in
//                CategoryTileComponentView(viewModel: tile, onTap: {
//                    print("Tile #\(index)")
//                })
//            }
//        )
//    }
//}
