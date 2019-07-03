//
//  SearchViewController.swift
//  VADarkMode
//
//  Created by Vikash Anand on 09/06/19.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, StoryBoarded {

    @IBOutlet var customView: CustomView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imageCategoryLabel: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.setImage()
    }
    
    private func setImage() {
        let selectedImageCategoryIndex = UserDefaults.standard.integer(forKey:
            "ImageCategory")
        let imageName = selectedImageCategoryIndex == 0 ? "Urban_Landscape" : "Glass_Structure"
        self.imageCategoryLabel.text = imageName == "Urban_Landscape" ? "Urban_Landscape".components(separatedBy: "_").joined(separator: " ") : "Glass_Structure".components(separatedBy: "_").joined(separator: " ")
        
        self.updateImage(withImage: imageName)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        print("SearchViewController - viewWillLayoutSubviews() called")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        print("SearchViewController - viewDidLayoutSubviews() called")
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        print("SearchViewController - traitCollectionDidChange called")
        self.setNeedsStatusBarAppearanceUpdate()
        self.customView.updateBorderColorForPicCreditLabel_Option3()
    }
    
    /*Resolving dynamic image - using traitcollection
     Two version(light and dark) of "Glass_Building" image is defined in image assets
     Now base on the current viewcontroller's traitcollection.userinterface style
     UIImage resolves and return the correct image.
    */
    private func updateImage(withImage named: String) {
        guard let image = UIImage(named: named) else { return }
        let assets = image.imageAsset
        guard let resolvedImage = assets?.image(with: self.traitCollection) else { return }
        self.imageView.image = resolvedImage
    }
    
    @IBAction func updateColor(sender: UISwitch) {
        //self.overrideUserInterfaceStyle = self.traitCollection.userInterfaceStyle == .light ? .dark : .light
        self.setNeedsStatusBarAppearanceUpdate()
        self.customView.updateBorderColorForPicCreditLabel_Option3()
    }
}
