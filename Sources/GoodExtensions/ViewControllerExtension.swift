//
//  ViewController.swift
//  GoodExtensions
//
//  Created by Dominik Pethö on 4/30/19.
//  Copyright © 2020 GoodRequest. All rights reserved.
//

#if !os(macOS)

import UIKit
import GRCompatible

public extension GRActive where Base: UIViewController {

    func embed(viewController: UIViewController, in containerView: UIView) {
          viewController.view.frame = containerView.bounds
          containerView.addSubview(viewController.view)
        base.addChild(viewController)
          viewController.didMove(toParent: base)
    }

}

#endif
