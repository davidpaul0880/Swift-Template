//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Swift MVP+VM Xcode Templates
//

class ___VARIABLE_sceneName___Presenter {
    var router: ___VARIABLE_sceneName___Router!
    var viewModel: Default___VARIABLE_sceneName___ViewModel
    weak var displayUI: ___VARIABLE_sceneName____DisplayUI?
    var service: ___VARIABLE_sceneName___Service?
    init(_ viewModel: Default___VARIABLE_sceneName___ViewModel) {
        self.viewModel = viewModel
    }
    deinit {
        printDebug("\(String(describing: self)) is being deInitialized.\n")
    }
}

//MARK: ___VARIABLE_sceneName____HandleUIEvents
extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName____HandleUIEvents {
    func doSomething() {
        
    }
    func loadTableViewOn(_ delegate: ___VARIABLE_sceneName___UIController) {
        delegate.loadInputFields([])
    }
}

// MARK: ___VARIABLE_sceneName____HandleCellUIEvents
extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName____HandleCellUIEvents {
    func getValueFor(_ inputType: ___VARIABLE_sceneName___.InputType) -> String? {
        return viewModel.getValueFor(inputType)
    }
    func setValue(_ value: String?, inputType: ___VARIABLE_sceneName___.InputType) {
        
    }
}

