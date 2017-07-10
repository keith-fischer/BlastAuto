//
//  BaseballUIFWStartup.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/5/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest
//startsup as signed out user or default at the main screen


/*#####################################
 startup
 First screen with animation
 #######################################*/
/// <#Description#>
public class ui_Startup{
    /// <#Description#>
    let uifw: UIFramework
    /// <#Description#>
    var createNewAccountButton: XCUIElement
    /// <#Description#>
    ///
    /// - Parameter fw: <#fw description#>
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.createNewAccountButton = self.uifw.fwapp.buttons["Create New Account"]
    }
    /// <#Description#>
    ///
    /// - Returns: <#return value description#>
    func tap_Create_New_Account() -> ui_AccountType{
        self.createNewAccountButton.tap()
        return ui_AccountType(fw: self.uifw)
    }
    /// <#Description#>
    ///
    /// - Returns: <#return value description#>
    func tap_Login() -> ui_Login{
        self.uifw.fwapp.staticTexts["Already have an account? Sign in here."].tap()
        return ui_Login(fw:self.uifw)
        //self.uifw.fwapp.tables.buttons["icClose"].tap()
    }
    
    /// <#Description#>
    func test_startup_titles(){
        print(type(of: self))

        //1
        //XCUIApplication().tables.staticTexts["BASEBALL"].tap()
        self.uifw.fwapp.tables.staticTexts["THE COMPLETE HITTING SOLUTION"].tap()
        self.uifw.fwapp.tables.staticTexts["THE COMPLETE HITTING SOLUTION"].swipeLeft()
        //2
        self.uifw.fwapp.staticTexts["Blast Motion Sensor"].tap()
        self.uifw.fwapp.staticTexts["The industry’s most accurate, natural motion sensor captures metrics while you practice & play."].tap()
        self.uifw.fwapp.staticTexts["Blast Motion Sensor"].swipeLeft()
        //3
        self.uifw.fwapp.staticTexts["Advanced Insights"].tap()
        self.uifw.fwapp.staticTexts["New & improved metrics provide advanced swing analysis insights to help you train smarter and get better."].tap()
        self.uifw.fwapp.staticTexts["Advanced Insights"].swipeLeft()
        //4
        self.uifw.fwapp.staticTexts["Coach Mode"].tap()
        self.uifw.fwapp.staticTexts["Manage multiple players or an entire team, compare swings, and review hitting trends on the mobile app."].tap()
        self.uifw.fwapp.staticTexts["Coach Mode"].swipeLeft()
        //5
        self.uifw.fwapp.staticTexts["Smart Video Capture"].tap()
        self.uifw.fwapp.staticTexts["Blast app intelligently auto-clips video, synced with your swing metrics, to enable real-time, mobile video analysis & sharing."].tap()
        self.uifw.fwapp.staticTexts["Smart Video Capture"].swipeLeft()
        //6
        self.uifw.fwapp.staticTexts["Training Center"].tap()
        self.uifw.fwapp.staticTexts["Video library featuring drills, pro tips, and insights to help you improve your hitting metrics."].tap()
        self.uifw.fwapp.staticTexts["Training Center"].swipeRight()
        
    }
}




/*#####################################
 new user
 create account type
 #######################################*/
/// <#Description#>
public class ui_AccountType{
    var tablesQuery: XCUIElementQuery
    let uifw: UIFramework
    /// <#Description#>
    ///
    /// - Parameter fw: <#fw description#>
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.tablesQuery=self.uifw.fwapp.tables
    }
    /// <#Description#>
    ///
    /// - Returns: <#return value description#>
    func tap_Prev() -> ui_Startup{
        return ui_Startup(fw: self.uifw)
    }
    /// <#Description#>
    ///
    /// - Returns: <#return value description#>
    func tap_Player() -> ui_Player{
        self.tablesQuery.staticTexts["I'M A PLAYER"].tap()
        return ui_Player(fw: self.uifw)
    }
    /// <#Description#>
    ///
    /// - Returns: <#return value description#>
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
        self.uifw.fwapp.tables.buttons["Create Account"].tap()
        sleep(10)
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
    func inputAccountForm(FullName: String,Email: String,ConfirmEmail: String,Password: String) -> ui_Welcome{
        print(type(of: self))
        print("FullName:"+FullName)
        self.key_Full_Name(txt: FullName)
        print("Email:"+Email)
        self.key_Email(txt: Email)
        print("ConfirmEmail:"+ConfirmEmail)
        self.key_Confirm_Email(txt: ConfirmEmail)
        print("Password:"+Password)
        self.key_Password(txt: Password)
        return self.tap_Create_Account()
        //return ui_Welcome(fw: self.uifw)
    }
    func inputAccountFormFail(FullName: String,Email: String,ConfirmEmail: String,Password: String,FailMsg: String){
        print(type(of: self))
        print("FullName:"+FullName)
        self.key_Full_Name(txt: FullName)
        print("Email:"+Email)
        self.key_Email(txt: Email)
        print("ConfirmEmail:"+ConfirmEmail)
        self.key_Confirm_Email(txt: ConfirmEmail)
        print("Password:"+Password)
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
