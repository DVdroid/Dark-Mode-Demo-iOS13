//
//  UIView+Bundle.swift
//  VADarkMode
//
//  Created by Vikash Anand on 16/06/19.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

extension Bundle {
    
    func loadXibWith<T>(name xibName: String) -> T? {
        guard let view = self.loadNibNamed(xibName, owner: nil, options: nil)?.first as? T
            else { return nil }
        return view
    }
}
