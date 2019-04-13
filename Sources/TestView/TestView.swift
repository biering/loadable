//
//  TestView.swift
//  Loadable-iOS
//
//  Created by Christoph Biering on 13.04.19.
//  Copyri ght © 2019 Loadable. All rights reserved.
//

import UIKit

public class TestView: UIView, XibLoadable {

    override public func awakeFromNib() {
        super.awakeFromNib()
        
        print("view loaded from xib")
    }

}
