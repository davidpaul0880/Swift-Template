//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Zco Xcode Templates
//
import UIKit
extension UITextField {
    func setKeyboardTypeFor(_ inputType: ___VARIABLE_sceneName___.InputType) {
        self.keyboardType = .asciiCapable
        self.autocapitalizationType = .none
        self.returnKeyType = .next
        self.autocorrectionType = .no
        self.inputView = nil
        switch inputType {
        case .email:
            self.keyboardType = .emailAddress
            self.textContentType = UITextContentType.emailAddress
        }
    }
}
enum ___VARIABLE_sceneName___ {
    struct Request: JSONDictionaryDeserializable {
        func toJSON() -> [String: Any] {
            return [:]
        }
    }
    struct Response: JSONDictionarySerializable {
        init(json: [String: Any]) throws {
        }
    }
    struct InputField {
        let inputType: InputType
        init(_ inputType: InputType) {
            self.inputType = inputType
        }
    }
    enum InputType: Int {
        case email
        func getFieldName() -> String? {
            switch self {
            case .email:
                return "label.email".localized()
            }
        }
        func getFieldLength() -> Int {
            switch self {
            case .email:
                return 100
            }
        }
        static func fieldsCount() -> CGFloat {
            return 1
        }
    }

}
