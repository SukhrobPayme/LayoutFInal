//
//  TileCategoryComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/8/25.
//

import SwiftUI

struct AddSavedTileView: View {
    var onTap: (() -> Void)?

    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                Image(systemName: "plus.app.fill")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 28)
                    .foregroundStyle(.cyan)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: geo.size.height * 0.5,
                        alignment: .center
                    )
                Text("Добавить")
                    .font(.caption)
                    .foregroundColor(.primary)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: geo.size.height * 0.5,
                        alignment: .center
                    )
            }
            .clipped()
        }
        .frame(width: 120, height: 120)
        .onTapGesture { onTap?() }
    }
}


//Preview
#Preview {
    AddSavedTileView(onTap: {print("Added")})
}
