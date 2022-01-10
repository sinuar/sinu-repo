//
//  Extensions.swift
//  AnAlert
//
//  Created by Sinuhé Ruedas on 21/12/21.
//

import Foundation
import UIKit

// MARK: - UITextView extension
extension UITextView {

    func centerVerticalText() {
        self.textAlignment = .center
        let fitSize = CGSize(width: bounds.width, height: CGFloat.greatestFiniteMagnitude)
        let size = sizeThatFits(fitSize)
        let calculate = (bounds.size.height - size.height * zoomScale) / 2
        let offset = max(1, calculate)
        contentOffset.y = -offset
    }
}
