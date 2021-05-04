//
//  CGSize+ScaledSize.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/30.
//

import Foundation
import UIKit

extension CGSize {
    var scaledSize: CGSize {
        .init(width: width * UIScreen.main.scale, height: height * UIScreen.main.scale)
    }
}
