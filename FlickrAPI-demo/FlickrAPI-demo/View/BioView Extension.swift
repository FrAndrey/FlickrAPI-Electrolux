//
//  BioView Extension.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-24.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit

extension BioViewController {
    
    func makeElements() {
        upperView = UIView()
        middleView = UIView()
        
        titleLabel = UILabel()
        titleLabel.text = "Andrey Fr Biography"
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 19)
        titleLabel.textAlignment = .center
        
        firstNameLabel = UILabel()
        firstNameLabel.text = "First Name"
        firstNameLabel.font = UIFont.boldSystemFont(ofSize: 19.0)
        firstNameLabel.textAlignment = .left
        
        lastNameLabel = UILabel()
        lastNameLabel.text = "Last Name"
        lastNameLabel.font = UIFont.boldSystemFont(ofSize: 19.0)
        lastNameLabel.textAlignment = .right
        
        lastNameText = UILabel()
        lastNameText.text = "Paramonov"
        lastNameText.font = UIFont(name: lastNameText.font.fontName, size: 19)
        lastNameText.textAlignment = .right
        
        firstNameText = UILabel()
        firstNameText.text = "Andrey"
        firstNameText.font = UIFont(name: firstNameText.font.fontName, size: 19)
        firstNameText.textAlignment = .left
        
        bioLabel = UILabel()
        bioLabel.text = "BIO"
        bioLabel.font = UIFont.boldSystemFont(ofSize: 21.0)
        bioLabel.textAlignment = .center
        
        mainTextLabel = UILabel()
        mainTextLabel.text = "Зима!.. Крестьянин, торжествуя, На дровнях обновляет путь; Его лошадка, снег почуя,Плетется рысью как-нибудь; Бразды пушистые взрывая, Летит кибитка удалая; Ямщик сидит на облучке  В тулупе, в красном кушаке.  Вот бегает дворовый мальчик,  В салазки жучку посадив,  Себя в коня преобразив;  Шалун уж заморозил пальчик:  Ему и больно и смешно, А мать грозит ему в окно… "
        mainTextLabel.font = UIFont(name: mainTextLabel.font.fontName, size: 23)
        mainTextLabel.textAlignment = .center
        mainTextLabel.numberOfLines = 0
        //mainTextLabel.sizeToFit()
        mainTextLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
    }
    
    
    func addSubviews() {
        //main view which contain sub views
        self.view.addSubview(avatar)
        self.view.addSubview(upperView)
        self.view.addSubview(middleView)
        self.view.bringSubviewToFront (avatar)
        
        //inner views, which contain other elements
        upperView.addSubview(titleLabel)
        middleView.addSubview(firstNameLabel)
        middleView.addSubview(lastNameLabel)
        middleView.addSubview(lastNameText)
        middleView.addSubview(firstNameText)
        middleView.addSubview(bioLabel)
        middleView.addSubview(mainTextLabel)
    }
    
    func setupConstraints() {
        //avatar
        avatar.autoAlignAxis(toSuperviewAxis: .vertical)
        avatar.autoPinEdge(toSuperviewEdge: .top, withInset: 117.0)
        
        //orange view section
        upperView.backgroundColor = .orange
        upperView.translatesAutoresizingMaskIntoConstraints = false
        upperView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        upperView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        upperView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        upperView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.15).isActive = true
        
        //name in the middle
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: upperView.centerXAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: upperView.bottomAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: upperView.widthAnchor, multiplier: 0.4).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: upperView.heightAnchor, multiplier: 0.5).isActive = true
        
        //middle(rest of the screen) view section 
        middleView.translatesAutoresizingMaskIntoConstraints = false
        middleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        middleView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        middleView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        middleView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.85).isActive = true
        
        //first name label
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameLabel.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        firstNameLabel.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        firstNameLabel.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        firstNameLabel.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.9).isActive = true
        
        //last name label
        lastNameLabel.translatesAutoresizingMaskIntoConstraints = false
        lastNameLabel.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        lastNameLabel.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        lastNameLabel.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        lastNameLabel.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.9).isActive = true
        
        //last name text
        lastNameText.translatesAutoresizingMaskIntoConstraints = false
        lastNameText.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        lastNameText.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        lastNameText.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        lastNameText.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.80).isActive = true
        
        //first name text
        firstNameText.translatesAutoresizingMaskIntoConstraints = false
        firstNameText.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        firstNameText.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        firstNameText.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        firstNameText.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.80).isActive = true
        
        //bio (label in the middle)
        bioLabel.translatesAutoresizingMaskIntoConstraints = false
        bioLabel.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        bioLabel.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        bioLabel.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        bioLabel.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.6).isActive = true
        
        //main text
        mainTextLabel.translatesAutoresizingMaskIntoConstraints = false
        mainTextLabel.centerXAnchor.constraint(equalTo: middleView.centerXAnchor).isActive = true
        mainTextLabel.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        mainTextLabel.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.9).isActive = true
        mainTextLabel.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 1.0).isActive = true
    }
    
}
