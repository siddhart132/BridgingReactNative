//
//  ViewController.swift
//  iOSTempAPP
//
//  Created by Pratap Singh, Siddharth on 01/05/20.
//  Copyright © 2020 Pratap Singh, Siddharth. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button:UIButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
               button.backgroundColor = .black
               button.setTitle("Button", for: .normal)
               button.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
               self.view.addSubview(button)
    }
    @objc func buttonClicked() {
                  print("Button Clicked")
        let jsBundleLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle")
        let data:NSDictionary = [:];
        
        let rootView = RCTRootView(
        bundleURL: jsBundleLocation!,
        moduleName: "RNTemp",
        initialProperties: data as [NSObject : AnyObject],
        launchOptions: nil)
        let viewController = UIViewController()
        viewController.view = rootView
        self.present(viewController, animated: true, completion: nil)
    }

}

