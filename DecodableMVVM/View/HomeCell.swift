//
//  HomeCell.swift
//  DecodableMVVM
//
//  Created by a on 4/28/18.
//  Copyright © 2018 Talip. All rights reserved.
//

import UIKit
import SDWebImage

class HomeCell: BaseCell {

    @IBOutlet weak var thumbnailImg: RoundedImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    var photoEnt:Photo!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func fillData(ent: BaseEntity, info: Any?) {
        photoEnt = ent as! Photo
        descriptionLbl.text = photoEnt.title
        thumbnailImg.sd_setImage(with: URL(string: photoEnt.thumbnailUrl!))
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
