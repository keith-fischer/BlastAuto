//
//  BaseballUIframework.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 6/26/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest

extension XCUIElement {
    /**
     Removes any current text in the field before typing in the new value
     - Parameter text: the text to enter into the field
     */
    func clearAndEnterText(text: String) {
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }
        self.tap()
        let deleteString = stringValue.characters.map { _ in XCUIKeyboardKeyDelete }.joined(separator: "")
        self.typeText(deleteString)
        self.typeText(text)
    }
    
    func waitForElementToAppear(_ element: XCUIElement, wait: Double?=5) -> Bool {
        let expectation = XCTKVOExpectation(keyPath: "exists", object: element,
                                            expectedValue: true)
        let result = XCTWaiter().wait(for: [expectation], timeout: wait!)
        return result == .completed
    }
}

/*#####################################
Base class to the framework
put reusable UI query functions here

#######################################*/
public class UIFrameworkUtils{
    var fwapp: XCUIElement
    let new_account_email: String
    var account_email: String
    var account_name:String
    init(app: XCUIElement){
        self.fwapp = app
        print(type(of: self))
        self.account_name=UIFrameworkUtils.getUserName()
        self.new_account_email = self.account_name+"@gmail.com"
        self.account_email=self.new_account_email
        print("account email:"+self.account_email)
    }
    
    func Title(){
        print(self.fwapp.title)
    }
    
    func getTextField2(id:UInt) -> XCUIElement{
        let textField = self.fwapp.tables.children(matching: .cell).element(boundBy: id).children(matching: .textField).element
        return textField
    }
    
    class func getUserName() -> String{
        let str1: String = "automation"
        let timeStamp: TimeInterval = Date().timeIntervalSince1970
        let number = Int(timeStamp)
        let str2: String = "\(Int(number))"
        let rc: String = str1+str2
        return rc
    }
    
    class func CreateEmail() -> String{
        let str1: String = "automation"
        let str3: String = "@gmail.com"
        let timeStamp: TimeInterval = Date().timeIntervalSince1970
        let number = Int(timeStamp)
        let str2: String = "\(Int(number))"
        let rc: String = str1+str2+str3
        return rc
    }
    
    func showelements(listName:String,lists: XCUIElementQuery){
        print(listName + "==========")
        var elementLabels = [String]()
        for i in 0..<lists.count {
            elementLabels.append (lists.element(boundBy: i).label)
        }
        
        print (elementLabels)
    }
    func getTextField(id:UInt,secured:Bool?=false) -> XCUIElement{
        if (secured==true){
            let textField = self.fwapp.tables.children(matching: .cell).element(boundBy: id).children(matching: .secureTextField).element
            return textField
        }
        else{
            let textField = self.fwapp.tables.children(matching: .cell).element(boundBy: id).children(matching: .textField).element
            return textField
        }
    }}

/*#####################################
Init framework
 #######################################*/
public class UIFramework: UIFrameworkUtils{
    
    override init(app: XCUIElement){
        super.init(app: app)
    }

    func uiStartup() -> ui_Startup{
        return ui_Startup(fw: self)
        
    }
    func uiMain() -> ui_Main{
        return ui_Main(fw: self)
    }
}
