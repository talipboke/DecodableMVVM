//
//  BaseListVC.swift
//  DecodableMVVM
//
//  Created by a on 4/28/18.
//  Copyright © 2018 Talip. All rights reserved.
//

import UIKit

class BaseListVC: BaseVC,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var table:BaseTableView!
    var viewModel:TableVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func setTableViewProperties(){
        self.table.tableFooterView = UIView()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return viewModel.setUpTableCell(table: table, indexPath: indexPath)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section: section)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
