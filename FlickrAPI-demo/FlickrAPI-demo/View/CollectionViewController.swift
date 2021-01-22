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
        //self.view.addSubview(image)
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
        //        addSubviews()
        //        setupConstraints()
        
        collectionView?.backgroundColor = .blue
        collectionView?.register(CustomCell.self, forCellWithReuseIdentifier: customCellIdentifier)
        
        Manager().FetchData(completionHandler: { (photos) in
            
            self.photoUrlCollection = photos
            print(self.photoUrlCollection)
            
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            
        })//end of closure
        
        
    }//end of viewDidLoad
    
    //size of the cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
    }
    
    //amount of items
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.photoUrlCollection?.count ?? 0
        
    }
    
    //on selection
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //get the cell that user've clicked
        let cell = collectionView.cellForItem(at: indexPath)
        //open detailsViewController to present bigger picture
        self.navigationController?.pushViewController(DetailViewController(), animated: false)
    }
    
    //custom cell registration/way it displayed/showed the photos
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath) as! CustomCell
        customCell.imageView.image = nil
        
        DispatchQueue.main.async {
            let photoUrl:String = self.photoUrlCollection![indexPath.item] as String
            let url = NSURL(string:photoUrl)
            let fetchedImage:NSData = try! NSData(contentsOf: url as! URL)
            
            if fetchedImage != nil {
                DispatchQueue.main.async {
                    customCell.imageView.image  = UIImage(data:fetchedImage as Data)
                }
            }//end of if statement
            
        }// end of closure
        return customCell
        
    }
    
}
