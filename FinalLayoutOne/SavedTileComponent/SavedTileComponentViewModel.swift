//
//  SavedTileComponentViewModel.swift
//  FinalLayoutOne
//
//  Created by Sukhrob on 07/05/25.
//

import SwiftUI

final class SavedTileComponentViewModel: ObservableObject, Identifiable {
    enum ViewState {
        case balance, usual, debt, empty

        var subtitleColor: Color {
            switch self {
            case .balance: return .cyan
            case .usual:   return .gray
            case .debt:    return .red
            case .empty:   return .clear
            }
        }

        var showsSubtitle: Bool {
            self != .empty
        }
    }

    let id = UUID()
    @Published var title: String
    @Published var subtitle: String
    @Published var image: String
    @Published var state: ViewState

    init(title: String, subtitle: String, image: String, state: ViewState) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.state = state
    }
}

