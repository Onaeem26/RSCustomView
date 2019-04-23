//
//  ViewController.swift
//  RoundedShadowView
//
//  Created by Osama Naeem on 23/04/2019.
//  Copyright © 2019 NexThings. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myCustomView : RSCustomView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        myCustomView = RSCustomView(cornerRadius: 30, shadowRadius: 30, shadowOffset: CGSize(width: 0, height: 0), shadowColor: UIColor.black, shadowOpacity: 0.8)
        myCustomView.bgcolor = UIColor(red:0.29, green:0.63, blue:0.49, alpha:1.0)
        
        view.addSubview(myCustomView)
        
        myCustomView.translatesAutoresizingMaskIntoConstraints = false
        myCustomView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        myCustomView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        myCustomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        myCustomView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true

    }


}

