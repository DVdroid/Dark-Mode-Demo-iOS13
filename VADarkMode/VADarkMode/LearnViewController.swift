//
//  LearnViewController.swift
//  VADarkMode
//
//  Created by Vikash Anand on 09/06/19.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

class LearnViewController: UIViewController, StoryBoarded {

    @IBOutlet var visualEffectView: VAVisualEffectView!
    @IBOutlet var profilePicView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //self.overrideUserInterfaceStyle = .dark
        self.profilePicView.layer.cornerRadius = self.profilePicView.frame.size.width / 2
        self.profilePicView.clipsToBounds = true
        self.profilePicView.layer.borderWidth = 3.0;
        self.profilePicView.layer.borderColor = UIColor(named: "ProfilePictureBorderColor")?.cgColor ?? UIColor.label.cgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        let displayMode = traitCollection.userInterfaceStyle.rawValue
        print("LearnViewController - Display mode \(displayMode)")
    }
}
