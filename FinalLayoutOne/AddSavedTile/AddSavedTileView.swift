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
        RatioContainer(heightRatio: 0.5){
            Image(systemName: "plus.app.fill")
                .resizable()
                .scaledToFit()
                .padding(.top, 28)
                .foregroundStyle(.cyan)
            VStack{
                Text(LocalizedStringResource(stringLiteral: "Добавить"))
                    .font(.caption)
                    .foregroundColor(.primary)
            }
            .padding(.top, 12)
        }
        .frame(width: 120, height: 120)
        .onTapGesture {
            onTap?()
        }
    }
}


//Preview
#Preview {
    AddSavedTileView(onTap: {})
}
