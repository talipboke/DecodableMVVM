//
//  BaseCell.swift
//  DecodableMVVM
//
//  Created by a on 4/23/18.
//  Copyright © 2018 Talip. All rights reserved.
//

import UIKit

class BaseCell: UITableViewCell {
   
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func fillData(ent : BaseEntity,info: Any? = nil){
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
