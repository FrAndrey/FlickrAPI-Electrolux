//
//  CustomCellCollectionViewCell.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-22.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    
    func setupViews() {
       // backgroundColor = UIColor.brown
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
