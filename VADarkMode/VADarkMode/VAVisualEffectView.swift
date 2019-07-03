//
//  VAVisualEffectView.swift
//  VADarkMode
//
//  Created by Vikash Anand on 09/06/19.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

class VAVisualEffectView: UIView {
    
    lazy var contentView:ViewWithUIComponents? = ViewWithUIComponents.instantiate()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        self.setup()
    }
    
    private lazy var imageView: UIImageView = {
        let selectedImageCategoryIndex = UserDefaults.standard.integer(forKey:
            "ImageCategory")
        let imageName = selectedImageCategoryIndex == 0 ? "Urban_Landscape" : "Glass_Structure"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        
        return imageView
    }()
    
    
    private func setup() {
        
        /*
         -View
         --blur
         ---Vibrancy
         ----content
         */
        
        self.backgroundColor = .systemFill
        self.addSubviewAtCenterWithEqualHeightWidth(self.imageView)
        
        let blurEffect = UIBlurEffect(style: .systemMaterial)
        let blurView = UIVisualEffectView(effect: blurEffect)
        self.addSubviewAtCenterWithEqualHeightWidth(blurView)
        
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect, style: .label)
        let vibrancyView = UIVisualEffectView(effect: vibrancyEffect)
        blurView.contentView.addSubviewAtCenterWithEqualHeightWidth(vibrancyView)
        
        guard let contentView = self.contentView else { return }
        vibrancyView.contentView.addSubviewFixedToAllSides(contentView)
    }
}

