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
        let str1: String = "blastmotionqaautomation"
        let timeStamp: TimeInterval = Date().timeIntervalSince1970
        let number = Int(timeStamp)
        let str2: String = "\(Int(number))"
        let rc: String = str1+str2
        return rc
    }
    
    class func CreateEmail() -> String{
        let str1: String = "blastmotionqaautomation"
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

/*#####################################
 new user
 create account type
#######################################*/
public class ui_AccountType{
    var tablesQuery: XCUIElementQuery
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.tablesQuery=self.uifw.fwapp.tables
    }
    func tap_Prev() -> ui_Startup{
        return ui_Startup(fw: self.uifw)
    }
    func tap_Player() -> ui_Player{
        self.tablesQuery.staticTexts["I'M A PLAYER"].tap()
        return ui_Player(fw: self.uifw)
    }
    func tap_Coach() -> ui_Coach{
        self.tablesQuery.staticTexts["I'M A COACH"].tap()
        return ui_Coach(fw: self.uifw)
    }
}

/*#####################################
 new user
 create account set player level
 #######################################*/
public class ui_Player{
    var collectionViewsQuery: XCUIElementQuery
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.collectionViewsQuery = self.uifw.fwapp.collectionViews
        uifw.showelements(listName: "staticTexts", lists: self.collectionViewsQuery.staticTexts)
    }
    func tap_Prev() -> ui_AccountType{
        return ui_AccountType(fw: self.uifw)
    }
    func tap_Youth() -> ui_Player_CreateAccount{
        collectionViewsQuery.staticTexts["Youth"].tap()
        return ui_Player_CreateAccount(fw: self.uifw)
    }
    func tap_Middle_School() -> ui_Player_CreateAccount{
        collectionViewsQuery.staticTexts["Middle School"].tap()
        return ui_Player_CreateAccount(fw: self.uifw)
    }
    func tap_High_School_Junior_Varsity() -> ui_Player_CreateAccount{
        collectionViewsQuery.staticTexts["High School Junior Varsity"].tap()
        return ui_Player_CreateAccount(fw: self.uifw)
    }
    func tap_High_School_Varsity() -> ui_Player_CreateAccount{
        collectionViewsQuery.staticTexts["High School Varsity"].tap()
        return ui_Player_CreateAccount(fw: self.uifw)
    }
    func tap_College() -> ui_Player_CreateAccount{
        collectionViewsQuery.staticTexts["College All Divisions"].tap()
        return ui_Player_CreateAccount(fw: self.uifw)
    }
    func tap_Minor_League() -> ui_Player_CreateAccount{
        collectionViewsQuery.staticTexts["Minor League All Levels"].tap()
        return ui_Player_CreateAccount(fw: self.uifw)
    }
    func tap_Professional() -> ui_Player_CreateAccount{
        collectionViewsQuery.staticTexts["Professional MLB"].tap()
        return ui_Player_CreateAccount(fw: self.uifw)
    }
    func tap_Other() -> ui_Player_CreateAccount{
        collectionViewsQuery.staticTexts["Other"].tap()
        return ui_Player_CreateAccount(fw: self.uifw)
    }

}
/*#####################################
 new user
 create account set coach level
 #######################################*/
public class ui_Coach{
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
    }
    func tap_Prev() -> ui_AccountType{
        return ui_AccountType(fw: self.uifw)
    }
}

/*#####################################
 new user
 create account player input form
 #######################################*/
public class ui_Player_CreateAccount{
    var icbackbutton: XCUIElement
    var tablesQuery: XCUIElementQuery
    enum fields:Int{case full_name=4,email=5,confirmemail=6,password=7}
    enum create_account_fail:String{
        case No_Fail=""
        case email_match="Please make sure emails match."
        case missing_field="Please fill out all fields."
        case Invalid_password = "Password must be 8 characters long and include the usage of characters and numbers."
        case No_server = "Failed to create account. Please try again."
        case No_network = "No Network Connection. Please try again."
    }
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
        self.tablesQuery=self.uifw.fwapp.tables
    }
    
    func getTextField(id:UInt,secured:Bool?=false) -> XCUIElement{
        if (secured==true){
            let textField = self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: id).children(matching: .secureTextField).element
            return textField
                }
        else{
            let textField = self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: id).children(matching: .textField).element
            return textField
        }
    }
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
    func key_Full_Name(txt: String){
        let idd = UInt(ui_Player_CreateAccount.fields.full_name.rawValue)
        let textField = self.getTextField(id: idd)
        textField.clearAndEnterText(text: txt)
    }
    func key_Email(txt: String){
        let idd = UInt(ui_Player_CreateAccount.fields.email.rawValue)
        let textField = self.getTextField(id: idd)
        textField.clearAndEnterText(text: txt)
    }
    func key_Confirm_Email(txt: String){
        let idd = UInt(ui_Player_CreateAccount.fields.confirmemail.rawValue)
        let textField = self.getTextField(id: idd)
        textField.clearAndEnterText(text: txt)
    }
    func key_Password(txt: String){
        let idd = UInt(ui_Player_CreateAccount.fields.password.rawValue)
        let textField = self.getTextField(id: idd,secured: true)
        textField.clearAndEnterText(text: txt)
    }
    func tap_Create_Account() -> ui_Welcome{
        self.tablesQuery.buttons["Create Account"].tap()
        //self.uifw.fwapp.waitForElementToAppear(<#T##element: XCUIElement##XCUIElement#>)
        return ui_Welcome(fw: self.uifw)
    }
    func tap_Create_Account_Fail(failMsg: String){
        self.uifw.showelements(listName: "Buttons",lists: self.uifw.fwapp.toolbars.buttons)
        self.uifw.showelements(listName: "textField",lists: self.uifw.fwapp.toolbars.textFields)
        self.tablesQuery.buttons["Create Account"].tap()
        self.tap_Failed(failMsg: failMsg)
    }
    func tap_Failed(failMsg: String){
        print("Test:"+failMsg)
        let failbutton = self.tablesQuery.buttons[failMsg]
        failbutton.tap()
    }
    func inputAccountForm(FullName: String,Email: String,ConfirmEmail: String,Password: String) -> ui_Main{
        self.key_Full_Name(txt: FullName)
        self.key_Email(txt: Email)
        self.key_Confirm_Email(txt: ConfirmEmail)
        self.key_Password(txt: Password)
        return self.tap_Create_Account()
    }
    func inputAccountFormFail(FullName: String,Email: String,ConfirmEmail: String,Password: String,FailMsg: String){
        self.key_Full_Name(txt: FullName)
        self.key_Email(txt: Email)
        self.key_Confirm_Email(txt: ConfirmEmail)
        self.key_Password(txt: Password)
        self.tap_Create_Account_Fail(failMsg: FailMsg)
    }
    func tap_Log_in_here() -> ui_Login{
        return ui_Login(fw: self.uifw)
    }

}

/*#####################################
 new user
 create account coach input form
 #######################################*/
public class ui_Coach_CreateAccount{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
}
