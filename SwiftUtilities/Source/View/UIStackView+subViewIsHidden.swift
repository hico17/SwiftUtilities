//
//  UIStackView+subViewIsHidden.swift
//  SwiftUtilities
//
//  Created by Luca Celiento on 17/04/2019.
//  Copyright © 2019 Luca Celiento. All rights reserved.
//

import UIKit

extension UIStackView {
    public func arrangedSubView(_ arrangedSubView: UIView, isHidden: Bool) {
        if arrangedSubView.isHidden != isHidden {
            arrangedSubView.isHidden = isHidden
        }
        self.layoutIfNeeded()
    }
}
