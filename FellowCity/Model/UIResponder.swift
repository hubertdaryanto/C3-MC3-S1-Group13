//
//  UIResponder.swift
//  FellowCity
//
//  Created by Feri Fajri on 11/08/20.
//  Copyright © 2020 Hubert Daryanto. All rights reserved.
//


import Foundation
import UIKit

// From https://stackoverflow.com/a/14135456/6870041
extension UIResponder {
    static var currentFirstResponder: UIResponder? {
        _currentFirstResponder = nil
        UIApplication.shared.sendAction(#selector(UIResponder.findFirstResponder(_:)), to: nil, from: nil, for: nil)
        return _currentFirstResponder
    }

    private static weak var _currentFirstResponder: UIResponder?

    @objc private func findFirstResponder(_ sender: Any) {
        UIResponder._currentFirstResponder = self
    }
    
    var globalFrame: CGRect? {
        guard let view = self as? UIView else { return nil }
        return view.superview?.convert(view.frame, to: nil)
    }
}
