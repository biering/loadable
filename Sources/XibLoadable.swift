//
//  XibLoadable.swift
//  Loadable-iOS
//
//  Created by Christoph Biering on 13.04.19.
//  Copyright © 2019 Loadable. All rights reserved.
//

import UIKit

public protocol XibLoadable: UIView {
    static var xibName: String { get }
    
    static func loadFromXib<T: UIView>(withOwner owner: Any?, options: [UINib.OptionsKey: Any]?) -> T
}

public extension XibLoadable {
    
    static var xibName: String {
        return String(describing: self)
    }
    
    static func loadFromXib<T: UIView>(
        withOwner owner: Any? = nil,
        options: [UINib.OptionsKey: Any]? = nil) -> T {
        
        let bundle = Bundle(for: self)
        let nibName = String(describing: self)
        let nib = UINib(nibName: nibName, bundle: bundle)
        
        guard let view = nib.instantiate(withOwner: owner, options: options).first as? T else {
            fatalError("Error loading nib with name \(nibName)")
        }
        
        return view
    }
    
}
