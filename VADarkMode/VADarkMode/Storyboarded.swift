//
//  Storyboarded.swift
//  VADarkMode
//
//  Created by Vikash Anand on 09/06/19.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

protocol StoryBoarded {
    static func instantiate() -> Self
}

extension StoryBoarded where Self: UIViewController {
    
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        return storyBoard.instantiateViewController(identifier: className) as! Self
    }
}
