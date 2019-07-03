//
//  RoundCornerLabel.swift
//  VADarkMode
//
//  Created by Vikash Anand on 26/05/21.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

class RoundCornerLabel: UIView {

    @IBInspectable var text: String? {
        didSet {
            self.aLabel.text = self.text
        }
    }
    private let aLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    }
    
    private func setup() {
        self.backgroundColor = .systemGray
        self.layer.borderWidth = 2
        self.layer.cornerRadius = 10.0
        self.layer.borderColor = UIColor.white.cgColor
        self.clipsToBounds = true
        self.aLabel.font = UIFont.systemFont(ofSize: 15)
        self.aLabel.textAlignment = .center
        self.aLabel.translatesAutoresizingMaskIntoConstraints = false
        self.aLabel.alpha = 0.6
        
        self.addSubviewFixedToAllSides(aLabel, with: UIEdgeInsets(top: 5, left: 5, bottom: -5, right: -5))
    }
}
