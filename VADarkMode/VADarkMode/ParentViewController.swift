//
//  ParentViewController.swift
//  VADarkMode
//
//  Created by Vikash Anand on 26/05/20.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {

    let child: UIViewController
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    init(with child: UIViewController) {
        self.child = child
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("This class not intended to be loaded from xib")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.updateUserInterfaceTrait()
        self.addChildViewController()
    }
    
    func addChildViewController() {
        
        self.addChild(self.child)
        self.child.view.frame = self.view.frame
        self.view.addSubview(self.child.view)
        self.child.didMove(toParent: self)
    }
    
    func removeChildViewController() {
        self.willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
    
    /*
     Overriding userinterface trait for the searchViewController(child for this class)
     */
    private func updateUserInterfaceTrait() {
        let newTrait = UITraitCollection(traitsFrom: [.init(userInterfaceStyle: .dark)])
        self.setOverrideTraitCollection(newTrait, forChild: self.child)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        print("ParentViewController - traitCollectionDidChange called")
        if traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
            self.updateUserInterfaceTrait()
        }
    }
}
