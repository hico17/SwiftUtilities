//
//  InstantiableFromXib.swift
//  SwiftUtilities
//
//  Created by Luca Celiento on 19/08/2019.
//  Copyright © 2019 Luca Celiento. All rights reserved.
//

import UIKit

public protocol InstantiableFromXib: UIViewController {
    static func instantiate() -> Self
}

extension InstantiableFromXib {
    static func instantiate() -> Self {
        return .init(nibName: String(describing: self), bundle: nil)
    }
}
