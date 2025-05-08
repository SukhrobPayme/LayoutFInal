//
//  TileCategoryComponentViewModel.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//

import Foundation

final class TileCategoryComponentViewModel: ObservableObject, Identifiable{
    var id = UUID()
    
    @Published var title: String
    @Published var image: String
    
    init(title: String, image: String) {
        self.title = title
        self.image = image
    }
}
