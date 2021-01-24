//
//  BioViewController.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-22.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit
import PureLayout

//all the view procedures are sectioned into
//make elements ; addSubviews ; setupConstraints  functions
//and placed in extension file
class BioViewController: UIViewController, UIScrollViewDelegate {
    
    var upperView:UIView!
    var middleView:UIView!
    var titleLabel:UILabel!
    var firstNameLabel:UILabel!
    var lastNameLabel:UILabel!
    var bioLabel:UILabel!
    var firstNameText:UILabel!
    var lastNameText:UILabel!
    var mainTextLabel:UILabel!
    
    //avatar with PureLayout
    lazy var avatar: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "me.jpeg"))
        imageView.autoSetDimensions(to: CGSize(width: 135, height: 135))
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = UIColor.orange.cgColor
        imageView.layer.cornerRadius = 64.0
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        makeElements()
        addSubviews()
        setupConstraints()
    }
    
}
