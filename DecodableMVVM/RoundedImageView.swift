//
//  RoundedImageView.swift
//  DecodableMVVM
//
//  Created by a on 4/28/18.
//  Copyright © 2018 Talip. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    override func layoutSubviews() {
        openBounds()
        round()
    }
    func openBounds(){
        self.clipsToBounds = true
        self.layer.masksToBounds = true
    }
    func round(){
        self.layer.cornerRadius = self.frame.height / 2
    }
    
}
