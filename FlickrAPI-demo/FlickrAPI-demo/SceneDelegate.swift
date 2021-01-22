//
//  SceneDelegate.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-21.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        //general project's setup, when there's no storyboard
        let tabBarController = TabBarController()
        let mainNavigationController = MainNavigationController()
        let bioViewController = BioViewController()
        let detailViewController = DetailViewController()
        
    
        //layout for UICollectionView
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: 20, left: 17, bottom: 10, right: 17)
        let collectionViewController = CollectionViewController(collectionViewLayout: flowLayout)
        
        //set appropriate names
        mainNavigationController.title = "Photo Search"
        bioViewController.title = "Bio"
        collectionViewController.title = "Electrolux on Flickr"

        
        //navigation controller contains 1 controller - mainView
        mainNavigationController.setViewControllers([collectionViewController], animated: false)
        //tab bar consists of 2 controllers: Navigation and Bio
        tabBarController.viewControllers = [mainNavigationController,bioViewController]
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        //tab is a root view controller
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

