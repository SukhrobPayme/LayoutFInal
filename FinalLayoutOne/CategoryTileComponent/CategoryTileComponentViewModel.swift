//
//  TileCategoryComponentViewModel.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//

import SwiftUI

// MARK: — Your Category model (replace or extend as needed)
public struct CategoryItem {
    let title: String
    let imageName: String
    let isActive: Bool
}

// MARK: — ViewModel
extension CategoryTileComponentView {
    enum ViewState {
        case normal
        case loading
        case disabled
    }
}

public class CategoryTileVM: ObservableObject, Identifiable {

    @Published var category: CategoryItem?
    @Published var viewState: CategoryTileComponentView.ViewState = .loading
    
    private var didTap: () -> Void

    public init(
        category: CategoryItem?,
        didTap: @escaping () -> Void
    ) {
        self.category = category
        self.didTap   = didTap
        updateViewState()
    }

    /// Call when new data arrives
    public func didReceiveCategory(_ category: CategoryItem) {
        self.category = category
        updateViewState()
    }

    /// Compute loading/disabled/normal
    private func updateViewState() {
        guard let cat = category else {
            viewState = .loading
            return
        }
        viewState = cat.isActive ? .normal : .disabled
    }

    /// Fire when user taps
    public func selectCategory() {
        didTap()
    }
}

