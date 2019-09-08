//
//  RegisterableCell.swift
//  Possible Music
//
//  Created by Luca Celiento on 03/02/2019.
//  Copyright © 2019 Bocalulu. All rights reserved.
//

import UIKit

public protocol RegisterableCellFromNib: class {
    static var nibName: String { get }
    static var reuseIdentifier: String { get }
}

extension RegisterableCellFromNib {
    static var nibName: String {
        return String(describing: Self.self)
    }
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
    static var nib: UINib {
        return UINib(nibName: nibName, bundle: nil)
    }
}
