//
//  FontStyle.swift
//  Payme
//
//  Created by Vyacheslav on 19/02/21.
//  Copyright © 2021 Dida. All rights reserved.
//

import Foundation
import UIKit

public enum FontStyle {
    case h1
    case h2
    case h2sb
    case h3
    case h3sb
    case h4
    case h5
    case h6
    case h7
    case custom(size: CGFloat, weight: UIFont.Weight)

    case h0700
    case h1700
    case h2500
    case h3400
    case t1600
    case t2500
    case t3600
    case t8700
    case s1500
    case s2600
    case b1600
    case b2600
    case l1500
    case l2600
    case l3500
    case l4500
    case l5500
    case b1400
    case b2400
    case b3400
    case b4400
    case b5400
    case c1600
    case c2400
    case c3400
    case a4600

    public var font: UIFont {
        switch self {
        case .h1:
            return .systemFont(ofSize: 20, weight: .semibold)
        case .h2:
            return .systemFont(ofSize: 20)
        case .h2sb:
            return .systemFont(ofSize: 20, weight: .semibold)
        case .h3:
            return .systemFont(ofSize: 16)
        case .h3sb:
            return .systemFont(ofSize: 16, weight: .semibold)
        case .h4:
            return .systemFont(ofSize: 15)
        case .h5:
            return .systemFont(ofSize: 14)
        case .h6:
            return .systemFont(ofSize: 12)
        case .h7:
            return .systemFont(ofSize: 10)
        case let .custom(size, weight):
            return .systemFont(ofSize: size, weight: weight)
        case .h0700:
            return FontToken.h0700
        case .h1700:
            return FontToken.h1700
        case .h2500:
            return FontToken.h2500
        case .h3400:
            return FontToken.h3400
        case .t1600:
            return FontToken.t1600
        case .t2500:
            return FontToken.t2500
        case .t3600:
            return FontToken.t3600
        case .t8700:
            return FontToken.t8700
        case .s1500:
            return FontToken.s1500
        case .s2600:
            return FontToken.s2600
        case .b1600:
            return FontToken.b1600
        case .b2600:
            return FontToken.b2600
        case .l1500:
            return FontToken.l1500
        case .l2600:
            return FontToken.l2600
        case .l3500:
            return FontToken.l3500
        case .l4500:
            return FontToken.l4500
        case .l5500:
            return FontToken.l5500
        case .b1400:
            return FontToken.b1400
        case .b2400:
            return FontToken.b2400
        case .b3400:
            return FontToken.b3400
        case .c1600:
            return FontToken.c1600
        case .c2400:
            return FontToken.c2400
        case .c3400:
            return FontToken.c3400
        case .a4600:
            return FontToken.a4600
        case .b4400:
            return FontToken.b4400
        case .b5400:
            return FontToken.b5400
        }
    }
}

extension UIFont {
    public static func font(
        with fontStyle: FontStyle
    ) -> UIFont { fontStyle.font }
}
