//
//  RoundedShadowViewHelper.swift
//  RoundedShadowView
//
//  Created by Osama Naeem on 23/04/2019.
//  Copyright © 2019 NexThings. All rights reserved.
//

import UIKit

class RSCustomView : UIView {
    
    //MARK: Properties
    var radius =  CGFloat()
    var sRadius = CGFloat()
    var sOffset =  CGSize()
    var sColor = UIColor()
    var sOpacity = Float()
    
    var shadowView: UIView!
    var contentView: UIView!
    
    var bgcolor: UIColor? {
        didSet {
            contentView.backgroundColor = bgcolor
        }
    }
    
    
    init(cornerRadius: CGFloat, shadowRadius: CGFloat, shadowOffset: CGSize, shadowColor: UIColor, shadowOpacity: Float ) {
        super.init(frame: .zero)
        self.radius = cornerRadius
        self.sRadius = shadowRadius
        self.sOffset = shadowOffset
        self.sColor = shadowColor
        self.sOpacity = shadowOpacity
        
        configureShadowView()
        configureContentView()
    }
    
    
    //MARK: - Configurations
    
    fileprivate func configureShadowView() {
            shadowView = UIView()
            shadowView.backgroundColor = .clear
            shadowView.layer.shadowColor = sColor.cgColor
            shadowView.layer.shadowOffset = sOffset
            shadowView.layer.shadowOpacity = sOpacity
            shadowView.layer.shadowRadius = radius
            addSubview(shadowView)
            
            shadowView.translatesAutoresizingMaskIntoConstraints = false
            shadowView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
            shadowView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
            shadowView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            shadowView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    }
    
    fileprivate func configureContentView() {
        contentView = UIView()
        contentView.layer.cornerRadius = radius
        contentView.clipsToBounds = true
        shadowView.addSubview(contentView)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leftAnchor.constraint(equalTo: shadowView.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: shadowView.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: shadowView.bottomAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: shadowView.topAnchor).isActive = true
    }
    
    
    func addChildView(childView: UIView) {
        contentView.addSubview(childView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
