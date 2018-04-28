//
//  BaseTableView.swift
//  DecodableMVVM
//
//  Created by a on 4/23/18.
//  Copyright © 2018 Talip. All rights reserved.
//

import UIKit

class BaseTableView: UITableView {

    func dequeue(identifier:String)-> BaseCell {
        return self.dequeueReusableCell(withIdentifier: identifier) as! BaseCell
    }

}
