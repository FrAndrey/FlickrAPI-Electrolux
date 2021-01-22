//
//  TabController.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-22.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange
        
        // make the font of tab bar larger
            let appearance = UITabBarItem.appearance()
            let attributes: [NSAttributedString.Key: AnyObject] = [NSAttributedString.Key(rawValue: NSAttributedString.Key.font.rawValue):UIFont(name: "Cochin", size: 29)!, NSAttributedString.Key(rawValue: NSAttributedString.Key.foregroundColor.rawValue): UIColor.black]
            appearance.setTitleTextAttributes(attributes, for: .normal)
        
        
    }

}
