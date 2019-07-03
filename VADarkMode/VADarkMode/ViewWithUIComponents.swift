//
//  ViewWithUIComponents.swift
//  VADarkMode
//
//  Created by Vikash Anand on 26/05/19.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

class ViewWithUIComponents: UIView {
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    static func instantiate() -> ViewWithUIComponents? {
        
        guard let view: ViewWithUIComponents = Bundle.main.loadXibWith(name: "ViewWithUIComponents") else { return nil }
        view.setupActivityIndicatorStyle()
        return view
    }
    
    /*
     .grey, .white and .whiteLarge is depricated in iOS 13
     New style - .medium and .large, also use color property to
     set your own color in activity indicator
     */
    private func setupActivityIndicatorStyle() {
        self.activityIndicator.style = .large
        guard let customDynamicColorForActivityIndicator = UIColor(named: "customDynamicColorTwo") else { return }
        self.activityIndicator.color = customDynamicColorForActivityIndicator
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        if self.traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
            self.activityIndicator.style = .medium
            guard let customDynamicColorForActivityIndicator = UIColor(named: "customDynamicColorTwo") else { return }
            self.activityIndicator.color = customDynamicColorForActivityIndicator
        }
    }
}
