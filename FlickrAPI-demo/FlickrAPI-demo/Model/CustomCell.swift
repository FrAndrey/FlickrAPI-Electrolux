//
//  CustomCellCollectionViewCell.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-22.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {

    var imageView:UIImageView!
    var image:UIImage!

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    
    func setupViews() {
        self.clipsToBounds = true
        imageView = UIImageView(frame: CGRect(x: self.bounds.origin.x, y: self.bounds.origin.y, width: 180, height: 180))
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = false
        self.addSubview(imageView)
        
       // backgroundColor = UIColor.brown
        
    }
    
    
}
