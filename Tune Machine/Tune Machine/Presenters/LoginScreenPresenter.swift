//
//  LoginScreenPresenter.swift
//  Tune Machine
//
//  Created by Sergio Rosendo on 7/3/19.
//  Copyright © 2019 Sergio Rosendo. All rights reserved.
//

import UIKit

class LoginScreenPresenter: UIViewController {
    // MARK: User interface elements
    var screenContentView: UIView!
    var directionsLabel: DirectionsLabel!
    var contentDivider: UIView!
    var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUserInterface()
    }
    
    private func setupUserInterface() {
        // Setting up screen content view
        self.screenContentView = self.view
        self.screenContentView.backgroundColor = AppColors.White
        
        // Setting up content divider
        self.contentDivider = UIView()
        self.contentDivider.backgroundColor = AppColors.Alto
        
        self.screenContentView.addSubview(contentDivider)
        
        self.contentDivider.translatesAutoresizingMaskIntoConstraints = false
        self.contentDivider.heightAnchor.constraint(equalToConstant: CGFloat(1.0)).isActive = true
        self.contentDivider.widthAnchor.constraint(equalToConstant: CGFloat(self.screenContentView.frame.width * 0.72)).isActive = true
        self.contentDivider.centerYAnchor.constraint(equalTo: self.screenContentView.centerYAnchor).isActive = true
        self.contentDivider.centerXAnchor.constraint(equalTo: self.screenContentView.centerXAnchor).isActive = true
   
    
        // Setting up directions label
        let directions = [("Connect ", false), ("TuneMachine ", true), ("with your\nSpotify account.", false)]
        self.directionsLabel = DirectionsLabel(with: directions)
        
        self.screenContentView.addSubview(self.directionsLabel)
        
        self.directionsLabel.translatesAutoresizingMaskIntoConstraints = false
        self.directionsLabel.leadingAnchor.constraint(equalTo: self.screenContentView.leadingAnchor).isActive = true
        self.directionsLabel.trailingAnchor.constraint(equalTo: self.screenContentView.trailingAnchor).isActive = true
        self.directionsLabel.bottomAnchor.constraint(equalTo: self.contentDivider.topAnchor, constant: -10).isActive = true
        
        // Setting up login button
        self.loginButton = MainButton(withTitle: "Login to Spotify")
        
        self.screenContentView.addSubview(self.loginButton)
        
        self.loginButton.translatesAutoresizingMaskIntoConstraints = false
        self.loginButton.heightAnchor.constraint(equalToConstant: CGFloat(44)).isActive = true
        self.loginButton.widthAnchor.constraint(equalToConstant: CGFloat(self.screenContentView.frame.width * 0.67)).isActive = true
        self.loginButton.centerXAnchor.constraint(equalTo: self.screenContentView.centerXAnchor).isActive = true
        self.loginButton.topAnchor.constraint(equalTo: self.contentDivider.bottomAnchor, constant: 20).isActive = true
        
        self.loginButton.addTarget(self, action: #selector(userPressedLoginButton), for: .touchUpInside)
    }
    
    
    @objc func userPressedLoginButton() {
        print("Truing to login...")
    }
}
