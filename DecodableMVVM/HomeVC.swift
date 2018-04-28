//
//  HomeVC.swift
//  DecodableMVVM
//
//  Created by a on 4/23/18.
//  Copyright © 2018 Talip. All rights reserved.
//

import UIKit
import SVProgressHUD

class HomeVC: BaseListVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        setProgressSettings()
        //controller identifier names must be same as controller name
        viewModel = TableVM(cellIdentifier: HomeCell.className, callBack: {
            self.setTableViewProperties()
            self.table.reloadData()
            SVProgressHUD.dismiss()
        })
        
        self.getPhotos()
    }
    func setProgressSettings(){
        SVProgressHUD.setForegroundColor(UIColor.red)
        SVProgressHUD.setBackgroundLayerColor(UIColor.white)
        SVProgressHUD.setDefaultMaskType(.black)
    }
    func getPhotos(){
        SVProgressHUD.show()
        viewModel.retrieveData(prm: [:], entType: Photo.self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.width / 3
    }
    
}
