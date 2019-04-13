//
//  TestViewController.swift
//  Loadable-iOS
//
//  Created by Christoph Biering on 13.04.19.
//  Copyright © 2019 Loadable. All rights reserved.
//

import UIKit

public class TestViewController: UIViewController, StoryboardLoadable {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        print("view controller loaded from storyboard")
    }
    
}
