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

class ___VARIABLE_sceneName___ViewController: BaseViewController {
    
    var eventHandler: ___VARIABLE_sceneName____HandleUIEvents!
    weak var viewModelPresentable: ___VARIABLE_sceneName___ViewModel?
    @IBOutlet weak var sbControl: ___VARIABLE_sceneName___SBControl!
    //Pubic Vars
    
    //Private Vars
    
    //MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewModelPresentable.titleText
    }
    deinit {
        printDebug("\(String(describing: self)) is being deInitialized.\n")
    }
    
    //MARK: override functions
    override class func storyboard() -> UIStoryboard {
        return UIStoryboard.main
    }
}

// MARK: Selectors and IBActions
extension ___VARIABLE_sceneName___ViewController {
    
}

// MARK: Private funtions
private extension ___VARIABLE_sceneName___ViewController {
 
//    func addBindings() {
//        userViewModel.reloadUserProfile = { [weak self] (updatedModel) in
//            guard let strongSelf = self else { return }
//            strongSelf.sbControl.updateProfileImage(strongSelf.userViewModel, updatedModel: updatedModel)
//        }
//    }
}

// MARK: ___VARIABLE_sceneName____DisplayUI
extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName____DisplayUI {
    func toggle(_ isLoading: Bool) {
    }
}
