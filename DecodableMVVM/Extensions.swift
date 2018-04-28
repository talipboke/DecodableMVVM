//
//  Extensions.swift
//  DecodableMVVM
//
//  Created by a on 4/28/18.
//  Copyright © 2018 Talip. All rights reserved.
//

import Foundation


extension NSObject {
    var className: String {
        return String(describing: type(of: self)).components(separatedBy: ".").last!
    }
    
    class var className: String {
        return String(describing: self).components(separatedBy: ".").last!
    }
}
