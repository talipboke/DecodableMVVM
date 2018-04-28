//
//  TableVM.swift
//  DecodableMVVM
//
//  Created by a on 4/23/18.
//  Copyright © 2018 Talip. All rights reserved.
//

import UIKit

class TableVM: NSObject {
    
    var dataList = [BaseEntity]()
    var callBack : (()->())!
    var cellIdentifier:String!
    
    
    init(cellIdentifier: String,callBack: @escaping ()->()) {
        super.init()
        self.cellIdentifier = cellIdentifier
        self.callBack = callBack
    }
    func cleearDataList(){
        self.dataList.removeAll()
    }
    func retrieveData(prm:[String:Any],entType:BaseEntity.Type){
        self.cleearDataList()
        entType.getList(prm: prm, result: { (list) in
//            print(list)
            if list != nil{
                self.dataList = list as! [BaseEntity]
//                self.dataList.append(list as! BaseEntity)
            }
            self.callBack()
        }) {
            //error için
        }
    }
    func numberOfSections()->Int{
        return 1
    }
    func numberOfRowsInSection(section:Int)->Int{
        return dataList.count
    }
    func setUpTableCell(table:BaseTableView,indexPath : IndexPath)->BaseCell {
        let cell = table.dequeue(identifier: cellIdentifier)
        if self.dataList.count > 0 {
            let item = dataList[indexPath.row]
            cell.fillData(ent: item)
            return cell
        }
        else
        {
            return cell
        }
        
    }
    
}


