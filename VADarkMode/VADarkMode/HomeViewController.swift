//
//  ViewController.swift
//  VADarkMode
//
//  Created by Vikash Anand on 09/06/19.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, StoryBoarded {

    @IBOutlet var picCreditLabel: UILabel!
    
    //Creating custom dynamic color programatically - Resolved using
    let dynamicColor = UIColor { (traitCollection: UITraitCollection) -> UIColor in
        if #available(iOS 13, *) {
            return traitCollection.userInterfaceStyle == .dark ? .yellow : .darkGray
        } else {
            return .yellow
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.resolveDynamicColor()
    }
    
    @IBAction func learnMore(_ sender: Any) {
        let learnVC = LearnViewController.instantiate()
        self.present(learnVC, animated: true, completion: nil)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        let displayMode = traitCollection.userInterfaceStyle.rawValue
        print("HomeViewController - Display mode \(displayMode)")
        
        self.updatingLabelColorProgramatically()
    }
    
    func updatingLabelColorProgramatically() {
        self.picCreditLabel.textColor = self.dynamicColor
    }
    
    func updatingLabelColorUsingColorDefinedInImageAssets() {
        //customDynamicColorOne - Is a custom dymnamic color
        //and it has two varients i.e. light and dark, both defined in Image Assets
        self.picCreditLabel.textColor = UIColor(named: "customDynamicColorOne")
    }
    
    func resolveDynamicColor() {
        let dynamicColor = UIColor.yellow
        let traitCollection = self.view.traitCollection
        let displayMode = traitCollection.userInterfaceStyle.rawValue
        let resolvedColor = dynamicColor.resolvedColor(with: traitCollection)
        print("\(resolvedColor) for display mode \(displayMode)")
    }
    
    @IBAction func saveImagePreference(_ sender: UISegmentedControl) {
        UserDefaults.standard.set(sender.selectedSegmentIndex, forKey: "ImageCategory")
    }
}

