//
//  TopRatedViewController.swift
//  VADarkMode
//
//  Created by Vikash Anand on 19/06/19.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController, StoryBoarded {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var containerView: ContainerView!
    
    /*
     Status bar style is dependent on the current viewcontroller's userinterfaceStyle(Trait).
     Child Viewcontroller inherit this style from their parent.
     If you want a specific style for the status bar then override the 'preferredStatusBarStyle'.
     Possible values that can be returned -
        lightContent,
        darkContent,
        default - Dependends on the current viewcontroller's userinterfaceStyle(Trait)
     */
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*1 .defult - Color will be decided on the basis of current viewcontroller's
         userinterfaceStyle(Trait)
         2 .black
         3 .white
         */
        self.scrollView.indicatorStyle = .default
    }
}
