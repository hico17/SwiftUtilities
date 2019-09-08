//
//  GradientView.swift
//  Serpenti
//
//  Created by Luca Celiento on 07/03/2019.
//  Copyright © 2019 System Management. All rights reserved.
//

import UIKit

public class GradientView: UIView {
    
    override public class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    public func fill(withColors colors: [CGColor]) {
        guard let layer = self.layer as? CAGradientLayer else { return }
        layer.colors = colors
    }
    
    public func setPoints(initialPoint: CGPoint, endPoint: CGPoint) {
        guard let layer = self.layer as? CAGradientLayer else { return }
        layer.startPoint = initialPoint
        layer.endPoint = endPoint
    }
    
    public convenience init(frame: CGRect, initialPoint: CGPoint, endPoint: CGPoint, colors: [CGColor]) {
        self.init(frame: frame)
        setPoints(initialPoint: initialPoint, endPoint: endPoint)
        fill(withColors: colors)
    }
}
