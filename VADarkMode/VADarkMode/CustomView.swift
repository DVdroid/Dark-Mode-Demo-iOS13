//
//  CustomView.swift
//  VADarkMode
//
//  Created by Vikash Anand on 15/06/19.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    lazy var picCreditLabel: UILabel = {
        let aLabel = UILabel()
        aLabel.numberOfLines = 0
        aLabel.textAlignment = .center
        aLabel.text = #"""
        Clicked By - VA
        Location  - Khradi, Pune
        """#
        aLabel.textColor = .label
        aLabel.font = UIFont.systemFont(ofSize: 30)
        aLabel.layer.borderWidth = 2.0
        aLabel.layer.cornerRadius = 10.0
        
        return aLabel
    }()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setup()
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        print("VACustomView - draw() called")
        //self.dynamicBackgroundColor.setFill()
        //UIRectFill(rect)
    }
    
    //Creating custom dynamic color programatically - Resolved using
    let dynamicBackgroundColor = UIColor { (traitCollection: UITraitCollection) -> UIColor in
        if traitCollection.userInterfaceStyle == .dark {
            return .yellow
        } else {
            return .darkGray
        }
    }
    
    let dynamicTextColor = UIColor { (traitCollection: UITraitCollection) -> UIColor in
        if traitCollection.userInterfaceStyle == .dark {
            return .black
        } else {
            return .white
        }
    }
    
    private func setup() {
        self.picCreditLabel.textColor = self.textBackgroundDynamicColorDefinedInImageAsset()//self.dynamicTextColor
        self.addAlabel()
    }
    
    func addAlabel() {
        self.picCreditLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubviewAtCenterWithFixLeadingAndTrailing(self.picCreditLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        print("VACustomView - layoutSubviews() called")
        self.picCreditLabel.textColor = self.textBackgroundDynamicColorDefinedInImageAsset()//self.dynamicTextColor
    }
    
    func viewBackgroundDynamicColorDefinedInImageAsset() -> UIColor {
        guard let dynamicColor = UIColor(named: "customDynamicColorOne") else
        { return UIColor.systemBackground }
        let traitCollection = self.traitCollection
        return dynamicColor.resolvedColor(with: traitCollection)
    }

    func textBackgroundDynamicColorDefinedInImageAsset() -> UIColor {
        guard let dynamicColor = UIColor(named: "customDynamicColorTwo") else
        { return UIColor.systemBackground }
        let traitCollection = self.traitCollection
        return dynamicColor.resolvedColor(with: traitCollection)
    }

    override func tintColorDidChange() {
        super.tintColorDidChange()
        
        print("VACustomView - tintColorDidChange() called")
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        print("VACustomView - traitCollectionDidChange() called")
        
        if traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
            // Resolve dynamic colors again
        }
    }
    
    func updateBorderColorForPicCreditLabel_Option1() {
        let traitCollection = self.traitCollection
        let resolvedColor = UIColor.label.resolvedColor(with: traitCollection)
        self.picCreditLabel.layer.borderColor = resolvedColor.cgColor
        self.picCreditLabel.textColor = UIColor.label.resolvedColor(with: traitCollection)
        
        let backGroundColor = UIColor(named:"customDynamicColorOne") ?? .yellow
        self.backgroundColor = backGroundColor.resolvedColor(with: traitCollection)
    }
    
    func updateBorderColorForPicCreditLabel_Option2() {
        let traitCollection = self.traitCollection
        traitCollection.performAsCurrent {
            self.picCreditLabel.layer.borderColor = UIColor.label.cgColor
            self.picCreditLabel.textColor = UIColor.label
            let backGroundColor = UIColor(named:"customDynamicColorOne") ?? .yellow
            self.backgroundColor = backGroundColor
        }
    }
    
    func updateBorderColorForPicCreditLabel_Option3() {
        
        let traitCollection = self.traitCollection
        let savedTraitCollection = UITraitCollection.current
        UITraitCollection.current = traitCollection
        self.picCreditLabel.layer.borderColor = UIColor.label.cgColor
        self.picCreditLabel.textColor = UIColor.label
        let backGroundColor = UIColor(named:"customDynamicColorOne") ?? .yellow
        self.backgroundColor = backGroundColor
        UITraitCollection.current = savedTraitCollection
    }
}
