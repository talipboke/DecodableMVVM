//
//  Photo.swift
//  DecodableMVVM
//
//  Created by a on 4/23/18.
//  Copyright © 2018 Talip. All rights reserved.
//

import Foundation

class Photo:BaseEntity,Decodable{
    
    //must be written same as service outputs.
    var albumId:Int?
    var id:Int?
    var title:String?
    var url:String?
    var thumbnailUrl:String?
    
    //if variables will be the same name with the system used it can symboled as below
    //var `default`:String!
    
    override class func getList(prm: [String:Any],result: @escaping (Any?)->(),error: @escaping ()->()){
        ServiceManager().get(urlString: ServiceProperties.MAIN_SERVICE_URL, parameters: prm, success: { (response) in
            do{
                let photo = try JSONDecoder().decode([Photo].self, from: response as! Data)
                result(photo)
            } catch let jsonErr {
                print("Error serializing json:",jsonErr)
            }
        }) { (error) in
            print(error)
        }
    }
}
