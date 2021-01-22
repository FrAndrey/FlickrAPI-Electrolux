//
//  BioViewController.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-22.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit
import PureLayout

// 90% of this code has to be in view, and handed by ViewModel.
// massive view controller..
class BioViewController: UIViewController {
    
    var upperView:UIView!
    var middleView:UIView!
    var titleLabel:UILabel!
    var firstNameLabel:UILabel!
    var lastNameLabel:UILabel!
    var bioLabel:UILabel!
    var firstNameText:UILabel!
    var lastNameText:UILabel!
    var mainTextLabel:UILabel!
    
    lazy var avatar: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "me.jpeg"))
        imageView.autoSetDimensions(to: CGSize(width: 128.0, height: 128.0))
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = UIColor.orange.cgColor
        imageView.layer.cornerRadius = 64.0
        imageView.clipsToBounds = true
        return imageView
    }()
    
    func addSubviews() {
        self.view.addSubview(avatar)
    }
    
    func setupConstraints() {
        avatar.autoAlignAxis(toSuperviewAxis: .vertical)
        avatar.autoPinEdge(toSuperviewEdge: .top, withInset: 117.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        setupConstraints()
        
        upperView = UIView()
        upperView.backgroundColor = .orange
        middleView = UIView()
        
        self.view.addSubview(upperView)
        self.view.addSubview(middleView)
        self.view.bringSubviewToFront (avatar)
        
        
        mainTextLabel = UILabel()
       mainTextLabel.text = "Зима!.. Крестьянин, торжествуя, На дровнях обновляет путь; Его лошадка, снег почуя,Плетется рысью как-нибудь; Бразды пушистые взрывая, Летит кибитка удалая; Ямщик сидит на облучке  В тулупе, в красном кушаке.  Вот бегает дворовый мальчик,  В салазки жучку посадив,  Себя в коня преобразив;  Шалун уж заморозил пальчик:  Ему и больно и смешно, А мать грозит ему в окно…"
        mainTextLabel.font = UIFont(name: mainTextLabel.font.fontName, size: 23)
        mainTextLabel.textAlignment = .center
        mainTextLabel.numberOfLines = 0
        //mainTextLabel.sizeToFit()
        mainTextLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        middleView.addSubview(mainTextLabel)
        
        
        mainTextLabel.translatesAutoresizingMaskIntoConstraints = false
        mainTextLabel.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        mainTextLabel.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        mainTextLabel.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        mainTextLabel.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.0).isActive = true
        
        
        
        bioLabel = UILabel()
        bioLabel.text = "BIO"
        bioLabel.font = UIFont.boldSystemFont(ofSize: 21.0)
        bioLabel.textAlignment = .center
        middleView.addSubview(bioLabel)
        
        bioLabel.translatesAutoresizingMaskIntoConstraints = false
        bioLabel.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        bioLabel.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        bioLabel.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        bioLabel.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.6).isActive = true
        
        
        firstNameText = UILabel()
        firstNameText.text = "Andrey"
        firstNameText.font = UIFont(name: firstNameText.font.fontName, size: 19)
        firstNameText.textAlignment = .left
        middleView.addSubview(firstNameText)
        
        firstNameText.translatesAutoresizingMaskIntoConstraints = false
        firstNameText.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        firstNameText.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        firstNameText.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        firstNameText.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.80).isActive = true
        
        
        lastNameText = UILabel()
        lastNameText.text = "Paramonov"
        lastNameText.font = UIFont(name: lastNameText.font.fontName, size: 19)
        lastNameText.textAlignment = .right
        middleView.addSubview(lastNameText)
        
        lastNameText.translatesAutoresizingMaskIntoConstraints = false
        lastNameText.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        lastNameText.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        lastNameText.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        lastNameText.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.80).isActive = true
        
        
        
        
        
        
        lastNameLabel = UILabel()
        lastNameLabel.text = "Last Name"
        lastNameLabel.font = UIFont.boldSystemFont(ofSize: 19.0)
        lastNameLabel.textAlignment = .right
        middleView.addSubview(lastNameLabel)
        
        lastNameLabel.translatesAutoresizingMaskIntoConstraints = false
        lastNameLabel.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        lastNameLabel.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        lastNameLabel.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        lastNameLabel.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.9).isActive = true
        
        
        firstNameLabel = UILabel()
        firstNameLabel.text = "First Name"
        firstNameLabel.font = UIFont.boldSystemFont(ofSize: 19.0)
        firstNameLabel.textAlignment = .left
        middleView.addSubview(firstNameLabel)
        
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameLabel.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        firstNameLabel.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        firstNameLabel.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        firstNameLabel.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.9).isActive = true
        
        middleView.translatesAutoresizingMaskIntoConstraints = false
        middleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        middleView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        middleView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        middleView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.85).isActive = true
        
        //set constraints
        upperView.translatesAutoresizingMaskIntoConstraints = false
        upperView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        upperView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        upperView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        upperView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.15).isActive = true
        
        titleLabel = UILabel()
        titleLabel.text = "Andrey Fr Biography"
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 19)
        titleLabel.textAlignment = .center
        upperView.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: upperView.centerXAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: upperView.bottomAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: upperView.widthAnchor, multiplier: 0.4).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: upperView.heightAnchor, multiplier: 0.5).isActive = true
        
        
        
    }
    
    
    
}
