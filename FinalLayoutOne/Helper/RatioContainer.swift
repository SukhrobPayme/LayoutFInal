//
//  RatioContainer.swift
//  LayoutOne
//
//  Created by Sukhrob on 06/05/25.
//

import SwiftUI

struct RatioContainer<Content: View>: View {
    let heightRatio:CGFloat
    let content: Content
    let alignment: Alignment
    
    init(heightRatio:CGFloat = 0.5,@ViewBuilder content: () -> Content, alignment: Alignment = .top) {
        self.heightRatio = heightRatio
        self.content = content()
        self.alignment = alignment
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                content.frame(width: geo.size.width, height: geo.size.height*heightRatio, alignment: alignment)
                Spacer()
            }
        }
    }
}
