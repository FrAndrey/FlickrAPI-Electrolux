//
//  DetailViewController.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-22.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var passedImage: UIImage?
    
    lazy var image: UIImageView = {
        let imageView = UIImageView(image: passedImage)
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        //imageView.autoSetDimensions(to: CGSize(width: view.frame.width, height: view.frame.height))
          imageView.clipsToBounds = true
          return imageView
      }()
    
    func addSubviews() {
           self.view.addSubview(image)
       }
    
    func setupConstraints() {
         image.autoAlignAxis(toSuperviewAxis: .vertical)
         image.autoPinEdge(toSuperviewEdge: .top, withInset: 150.0)
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSubviews()
        setupConstraints()
        view.backgroundColor = .white
        
        
    }
    


}
