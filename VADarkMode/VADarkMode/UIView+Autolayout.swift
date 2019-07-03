//
//  UIView+Autolayout.swift
//  VADarkMode
//
//  Created by Vikash Anand on 16/06/19.
//  Copyright © 2019 Vikash Anand. All rights reserved.
//

import UIKit

extension UIView  {
    
    func addSubviewAtCenterWithEqualHeightWidth(_ subView: UIView) {
        
        subView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subView)
        NSLayoutConstraint.activate([
            subView.heightAnchor.constraint(equalTo: self.heightAnchor),
            subView.widthAnchor.constraint(equalTo: self.widthAnchor),
            subView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            subView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            ])
    }
    
    func addSubviewAtCenter(_ subView: UIView) {
        subView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subView)
        NSLayoutConstraint.activate([
            subView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            subView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            ])
    }
    
    func addSubviewAtCenterWithFixLeadingAndTrailing(_ subView: UIView) {
        subView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subView)
        NSLayoutConstraint.activate([
            subView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            subView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            subView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            subView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            ])
    }
    
    func addSubviewFixedToAllSides(_ subView: UIView, with offset: UIEdgeInsets = .zero) {
        subView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subView)
        NSLayoutConstraint.activate([
            subView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: offset.left),
            subView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: offset.right),
            subView.topAnchor.constraint(equalTo: self.topAnchor, constant: offset.top
            ),
            subView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: offset.bottom),
            ])
    }
}
