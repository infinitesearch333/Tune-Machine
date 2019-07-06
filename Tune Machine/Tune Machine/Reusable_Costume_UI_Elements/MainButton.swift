//
//  MainButton.swift
//  Tune Machine
//
//  Created by Sergio Rosendo on 7/4/19.
//  Copyright © 2019 Sergio Rosendo. All rights reserved.
//

import UIKit

class MainButton: UIButton {
    // Initalizer used when creating element programmatically
    // Intializer will receive:
    // * A string containing the title of the main button
    init(withTitle title: String){
        super.init(frame: .zero)
        
        self.setupMainButton(withTitle: title)
    }
    
    
    // Initializer used when creating element through interface builder
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        //TODO: Add this funtionality!
    }
    
    
    // Function styles directions main button
    private func setupMainButton(withTitle title: String) {
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = AppFonts.LatoBold
        self.titleLabel?.textColor = AppColors.White
        self.contentHorizontalAlignment = .center
        self.contentVerticalAlignment = .center
        
        self.backgroundColor = AppColors.Emerald
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 6
    }
    
    override var isHighlighted: Bool {
        get {
            return super.isHighlighted
        }
        
        set {
            if newValue {
                // Animating main button (Pressed state)
                UIView.animate(withDuration: 0.1) {
                    self.backgroundColor = AppColors.EmeraldDark
                    self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
                }
                
            } else {
                // Animating main button (Released state)
                UIView.animate(withDuration: 0.1) {
                    self.backgroundColor = AppColors.Emerald
                    self.transform = CGAffineTransform(scaleX: 1, y: 1)
                }

            }
        }
    }
}
