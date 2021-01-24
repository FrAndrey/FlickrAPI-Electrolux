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
    var selectedImage:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
        
        collectionView?.backgroundColor = .white
        collectionView?.register(CustomCell.self, forCellWithReuseIdentifier: customCellIdentifier)
        
        Manager().FetchData(completionHandler: { (photos) in
            self.photoUrlCollection = photos
           // print(self.photoUrlCollection)
            
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        })//end of closure
    }//end of viewDidLoad
    
    //size of the cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 165, height: 165)
    }
    
    //amount of items
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.photoUrlCollection?.count ?? 0
    }
    
    //on selection
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //get the cell that user've clicked
        let cell = collectionView.cellForItem(at: indexPath) as! CustomCell
        //open detailsViewController to present bigger picture
        let detailViewController = DetailViewController()
        
        //pass image to use in new VC
        selectedImage = cell.imageView.image
        detailViewController.passedImage = selectedImage
        
        //navigate to detail controller
        self.navigationController?.pushViewController(detailViewController, animated: false)
    }
    
    //custom cell registration/way it displayed/showed the photos
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath) as! CustomCell
        customCell.imageView.image = nil
        
        DispatchQueue.main.async {
            if let photoUrl:String = self.photoUrlCollection![indexPath.item] as String {
            let url = URL(string:photoUrl)
            let fetchedImage:NSData = try! NSData(contentsOf: url!)
            
                DispatchQueue.main.async {
                    customCell.imageView.image  = UIImage(data:fetchedImage as Data)
            }
            }//end of if
        }// end of closure
        return customCell
    }
    
}
