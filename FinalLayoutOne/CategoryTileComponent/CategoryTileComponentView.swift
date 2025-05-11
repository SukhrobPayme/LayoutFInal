//
//  TileCategoryComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//
import SwiftUI

struct CategoryTileComponentView: View {
    @ObservedObject var viewModel: CategoryTileVM
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                Group {
                    switch viewModel.viewState {
                    case .loading:
                        ProgressView()
                    case .disabled:
                        Image(systemName: viewModel.category?.imageName ?? "questionmark")
                            .resizable()
                            .scaledToFit()
                            .opacity(0.4)
                    case .normal:
                        Image(systemName: viewModel.category?.imageName ?? "")
                            .resizable()
                            .scaledToFit()
                            .padding(.top, 16)
                    }
                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: geo.size.height * 0.5,
                    alignment: .center
                )
                Group {
                    switch viewModel.viewState {
                    case .loading:
                        EmptyView()
                    case .disabled:
                        Text(viewModel.category?.title ?? "")
                            .font(.caption)
                            .foregroundColor(.gray)
                    case .normal:
                        Text(viewModel.category?.title ?? "")
                            .font(.caption)
                            .foregroundColor(.primary)
                            .padding(.top, 4)
                    }
                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: geo.size.height * 0.5,
                    alignment: .center
                )
            }
            .clipped()
        }
        .frame(width: 120, height: 120)
        .background(.primarySet)
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.5), radius: 3, x: 0, y: 3)
        .onTapGesture { viewModel.selectCategory() }
    }
}



struct CategoryTileComponentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CategoryTileComponentView(
                viewModel: CategoryTileVM(
                    category: CategoryItem(title: "Music", imageName: "music.note", isActive: true)
                ) {
                    print("Tapped Music")
                }
            )
            .previewDisplayName("Normal")
            CategoryTileComponentView(
                viewModel: CategoryTileVM(
                    category: CategoryItem(title: "Books", imageName: "book.closed", isActive: false)
                ) {
                    print("Tapped Books")
                }
            )
            .previewDisplayName("Disabled")
            CategoryTileComponentView(
                viewModel: CategoryTileVM(
                    category: nil
                ) {
                    print("Tapped Nil")
                }
            )
            .previewDisplayName("Loading")
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
