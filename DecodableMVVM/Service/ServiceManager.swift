//
//  ServiceManager.swift
//  DecodableMVVM
//
//  Created by a on 4/23/18.
//  Copyright © 2018 Talip. All rights reserved.
//

import UIKit
import Alamofire

class ServiceManager:NSObject{
    
    func get(urlString:String,parameters:[String:Any],success: @escaping(Any?)->(),failure: @escaping (String)->()){
        Alamofire.request(urlString, method: .get, parameters: parameters, encoding: URLEncoding.default)
            .responseData { (data) in
                if let json = data.result.value {
                    success(json)
                    
                }
        }
    }
}


