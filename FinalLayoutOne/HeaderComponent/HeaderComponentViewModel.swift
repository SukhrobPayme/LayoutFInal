//
//  HeaderComponentViewModel.swift
//  FinalLayoutOne
//
//  Created by Sukhrob on 07/05/25.
//

import Foundation

final class HeaderComponentModelView: ObservableObject {
    @Published var title: String
    
    
    init(title: String) {
        self.title = title
    }
}


