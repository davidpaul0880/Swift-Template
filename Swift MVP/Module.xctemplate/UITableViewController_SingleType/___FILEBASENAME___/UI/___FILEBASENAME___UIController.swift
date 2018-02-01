//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the ZCo Swift Xcode Templates
//

import UIKit
class ___VARIABLE_sceneName___UIController {
    
    //weak var eventHandler: ___VARIABLE_sceneName____HandleCellUIEvents!
    fileprivate let tableViewDataSource: TableViewDataSource<___VARIABLE_cellName___CellPresentable, ___VARIABLE_cellName___TableViewCell>
    init(_ tableView: UITableView, eventHandler: ___VARIABLE_sceneName____HandleCellUIEvents) {
        //self.eventHandler = eventHandler
        self.tableViewDataSource = TableViewDataSource<___VARIABLE_cellName___CellPresentable, ___VARIABLE_cellName___TableViewCell>(tableView: tableView)
        tableView.delegate = tableViewDataSource
        tableView.dataSource = tableViewDataSource
        tableViewDataSource.actionHandler = { [weak self] (model, indexPath) in
            eventHandler.tappedOption(model)
        }
    }
    func load___VARIABLE_cellName___s(_ options: [___VARIABLE_cellName___ViewModel]) {
        tableViewDataSource.dataSource = options
    }
    deinit {
        printDebug("\(String(describing: self)) is being deInitialized.")
    }
}
