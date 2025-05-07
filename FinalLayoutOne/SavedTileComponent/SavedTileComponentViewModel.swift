//
//  SavedTileComponentViewModel.swift
//  FinalLayoutOne
//
//  Created by Sukhrob on 07/05/25.
//

import Foundation

final class SavedTileComponentViewModel: ObservableObject, Identifiable {
    var id = UUID()
    
    var title: String
    var subtitle: String
    var image: String
    
    init(title: String, subtitle: String, image: String) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
    }
}


