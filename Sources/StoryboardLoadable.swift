//
//  StoryboardLoadable.swift
//  Loadable-iOS
//
//  Created by Christoph Biering on 13.04.19.
//  Copyright © 2019 Loadable. All rights reserved.
//

import UIKit

public protocol StoryboardLoadable: UIViewController {
    static var storyboardName: String { get }
    
    static func loadFromStoryboard<T: UIViewController>(in bundle: Bundle?) -> T
    static func loadFromStoryboard<T: UIViewController>(withName name: String) -> T
}

public extension StoryboardLoadable {
    
    static var storyboardName: String {
        return String(describing: self)
    }
    
    static func loadFromStoryboard<T: UIViewController>(in bundle: Bundle? = nil) -> T {
        return loadFromStoryboard(withName: storyboardName)
    }
    
    static func loadFromStoryboard<T: UIViewController>(
        withName name: String) -> T {
        let bundle = Bundle(for: self)
        let storyboard = UIStoryboard(name: name, bundle: bundle)
        
        guard let vc = storyboard.instantiateInitialViewController() as? T else {
            fatalError("failed to load \(name) storyboard file.")
        }
        
        return vc
    }
    
}
