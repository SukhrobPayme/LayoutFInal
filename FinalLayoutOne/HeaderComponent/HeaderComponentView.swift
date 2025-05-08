//
//  HeaderComponentView.swift
//  FinalLayoutOne
//
//  Created by Sukhrob on 07/05/25.
//

import SwiftUI

struct HeaderComponentView: View {
    var viewModel: HeaderComponentModelView
    var onButtonTap: () -> Void
    
    var body: some View {
        HStack {
            Text(viewModel.title)
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(LocalizedStringResource(extendedGraphemeClusterLiteral: "Все"))
                .font(.headline)
                .foregroundColor(.cyan)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .onTapGesture {
                    onButtonTap()
                }
        }
    }
}


//Preview
#Preview {
    HeaderComponentView(viewModel: HeaderComponentModelView(title: "Something"), onButtonTap: { print("Tappeds")
    })
}

