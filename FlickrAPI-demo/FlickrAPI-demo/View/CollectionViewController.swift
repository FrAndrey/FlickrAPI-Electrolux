//
//  ViewController.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-21.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit
import PureLayout

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var viewModel:ViewModel?
    var photoUrlCollection:[String]?
    let customCellIdentifier = "customCellIdentifier"
    
    
    
    lazy var image: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: ""))
        //UIImageView(image: UIImage(named: ""))
        imageView.autoSetDimensions(to: CGSize(width: 150.0, height: 150.0))
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.layer.cornerRadius = 64.0
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var upperView: UIView = {
        let view = UIView()
        view.autoSetDimension(.height, toSize: 150)
        view.backgroundColor = .gray
        return view
    }()
    
    func addSubviews() {
        self.view.addSubview(image)
       // self.view.addSubview(upperView)
    }
    
    func setupConstraints() {
        image.autoAlignAxis(toSuperviewAxis: .vertical)
        image.autoPinEdge(toSuperviewEdge: .top, withInset: 150.0)
//        upperView.autoPinEdge(toSuperviewEdge: .left)
//        upperView.autoPinEdge(toSuperviewEdge: .right)
//        upperView.autoPinEdgesToSuperviewEdges(with: .zero, excludingEdge: .bottom)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
        addSubviews()
        setupConstraints()
        
        collectionView?.backgroundColor = .blue
        collectionView?.register(CustomCell.self, forCellWithReuseIdentifier: customCellIdentifier)
        
        
        
        
        
        
        
        Manager().FetchData(completionHandler: { (photos) in
            self.photoUrlCollection = photos
            print(self.photoUrlCollection)
            
                let url = URL(string: self.photoUrlCollection![0])!
            
            URLSession.shared.dataTask(with: url, completionHandler:  { (data, _, _) in
                DispatchQueue.main.async {
                self.image.image = UIImage(data:data!)
                 }
            }).resume()
            

        })//end of closure

        
    }//end of viewDidLoad

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 3
        
    }

override func collectionView(_ collectionView: UICollectionView,
                             cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
 
    let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath)
    return customCell
 
 }

}
