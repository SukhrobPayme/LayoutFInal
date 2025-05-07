//
//  GroupCategoryComponentViewModel.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//

import Foundation

final class GroupCategoryComponentViewModel: ObservableObject, Identifiable {
    var id = UUID()
    var tiles: [SavedTileComponentViewModel]
    
    init(tiles: [SavedTileComponentViewModel]) {
        self.tiles = tiles
    }
}
