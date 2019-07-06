//
//  DirectionsLabel.swift
//  Tune Machine
//
//  Created by Sergio Rosendo on 7/4/19.
//  Copyright © 2019 Sergio Rosendo. All rights reserved.
//

import UIKit

class DirectionsLabel: UILabel {
    // Initalizer used when creating element programmatically
    // Intializer will receive:
    // * An array of tuples representing the directions and whether they should be bolded
    init(with directions: [(text: String, isBolded: Bool)]) {
        super.init(frame: .zero)
        
        self.setup(directions: directions)
        
    }
    
    
    // Initializer used when creating element through interface builder
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        //TODO: Add this funtionality!
    }
    
    
    // Function styles directions label
    private func setup(directions: [(text: String, isBolded: Bool)]) {
        self.numberOfLines = 0
        self.textAlignment = .center
        self.textColor = AppColors.DoveGray
        
        let directionsAttributedText = NSMutableAttributedString()
        
        for direction in directions {
            let attributedText: NSMutableAttributedString
            
            if direction.isBolded {
                attributedText = NSMutableAttributedString(string: direction.text, attributes: [AttributedTextkeys.FontKey : AppFonts.LatoBold])
                
            } else {
                attributedText = NSMutableAttributedString(string: direction.text, attributes: [AttributedTextkeys.FontKey : AppFonts.LatoRegular])
            }
            
            directionsAttributedText.append(attributedText)
        }
        
        self.attributedText = directionsAttributedText
    }
}
