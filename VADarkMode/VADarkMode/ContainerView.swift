//
//  ContainerView.swift
//  VAScrollView
//
//  Created by Vikash Anand on 26/05/19.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

class ContainerView: UIView {
    
    private lazy var label: UILabel = {
        
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    private lazy var labelAttributes: [NSAttributedString.Key: Any] = {
        
        let font = UIFont.systemFont(ofSize: 16)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        paragraphStyle.paragraphSpacingBefore = 15.0
        paragraphStyle.paragraphSpacing = 15.0
        paragraphStyle.firstLineHeadIndent = 5.0
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: UIColor.label,
            .paragraphStyle: paragraphStyle
        ]
        
        return attributes
    }()
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.setup()
    }
    
    init() {
        super.init(frame: .zero)
        self.setup()
    }
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    private func setup() {
        self.setAttributedSting()
        self.addSubviewFixedToAllSides(label)
    }
    
    private func setAttributedSting() {
        
        let string = "This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA.This is some random text by - VA."
        
        let attributedString = NSAttributedString(string: string,
                                              attributes: self.labelAttributes)
        label.attributedText = attributedString
    }
}
