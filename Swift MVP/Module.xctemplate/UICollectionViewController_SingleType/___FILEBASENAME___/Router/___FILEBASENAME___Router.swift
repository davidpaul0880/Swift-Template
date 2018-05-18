//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Swift MVP+VM Swift Xcode Templates
//

import UIKit
enum ___VARIABLE_sceneName___Segue: String {
    case showDetail = "ShowDetailViewController"
}
final class ___VARIABLE_sceneName___Router: BaseNavigation, Navigator {
    
    static func addContracts(_ viewController: ___VARIABLE_sceneName___ViewController) {
        
        let viewModel = Default___VARIABLE_sceneName___ViewModel()
        let presenter = ___VARIABLE_sceneName___Presenter(viewModel)
        let router = ___VARIABLE_sceneName___Router(with: viewController)
        presenter.router = router
        presenter.displayUI = viewController
        viewController.router = router//assigned to instance in BaseViewController
        viewController.eventHandler = presenter
        viewController.viewModel = viewModel
    }
    func perform(_ segue: ___VARIABLE_sceneName___Segue, sender: Any?) {
        guard let actionSegue = ___VARIABLE_sceneName___Segue(rawValue: segue.rawValue) else { return }
        switch actionSegue {
        case .showDetail:
            viewController.performSegue(withIdentifier: segue.rawValue, sender: sender)
        }
    }
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let actionSegue = ___VARIABLE_sceneName___Segue(rawValue: identifier) else {
            fatalError("identifier not defined or not matched with defined LoginSegue")
        }
//        switch actionSegue {
//        case .showDetail:
//            guard let viewController = segue.destination as? DetailViewController else {
//                printError("destination class mismatch")
//                return
//            }
//            DetailRouter<DetailSegue>.addContracts(viewController)
//        }
        
    }
    deinit {
        printDebug("\(String(describing: self)) is being deInitialized.")
    }
}

