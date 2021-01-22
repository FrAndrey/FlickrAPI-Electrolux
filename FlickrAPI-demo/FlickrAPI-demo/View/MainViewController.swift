//
//  ViewController.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-21.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit
import PureLayout

class MainViewController: UIViewController {

    var viewModel:ViewModel?
    var photoCollection:[Photo]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        viewModel = ViewModel()
        Manager().FetchData(completionHandler: { (photos) in
            self.photoCollection = photos
            print(self.photoCollection)
            DispatchQueue.main.async{
                self.photoCollection = photos
                
                
                
                }
        })//end of closure
        
    }//end of viewDidLoad
        
        
        
        
      //  addSubviews()
      //  setupConstraints()
        
        
    }


    
    
//      lazy var upperView: UIView = {
//          let view = UIView()
//          view.autoSetDimension(.height, toSize: 150)
//          view.backgroundColor = .gray
//          return view
//      }()
//
//      lazy var avatar: UIImageView = {
//          let imageView = UIImageView(image: UIImage(named: "avatar.jpg"))
//          imageView.autoSetDimensions(to: CGSize(width: 150.0, height: 150.0))
//          imageView.layer.borderWidth = 3.0
//          imageView.layer.borderColor = UIColor.lightGray.cgColor
//          imageView.layer.cornerRadius = 64.0
//          imageView.layer.backgroundColor = UIColor.brown.cgColor
//          imageView.clipsToBounds = true
//          return imageView
//      }()
//
//      func addSubviews() {
//          self.view.addSubview(avatar)
//          self.view.addSubview(upperView)
//      }
//
//      func setupConstraints() {
//          avatar.autoAlignAxis(toSuperviewAxis: .vertical)
//          avatar.autoPinEdge(toSuperviewEdge: .top, withInset: 64.0)
//          upperView.autoPinEdge(toSuperviewEdge: .left)
//          upperView.autoPinEdge(toSuperviewEdge: .right)
//          upperView.autoPinEdgesToSuperviewEdges(with: .zero, excludingEdge: .bottom)
//      }
    



