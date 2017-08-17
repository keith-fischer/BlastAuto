//
//  Test_Setup.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/16/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import XCTest
import Foundation


extension NGABaseballUITests{

    /// <#Description#>
    func ttestLogin(){
        XCUIDevice.shared().orientation = .portrait
        let fw=UIFramework(app: XCUIApplication())
        let start=fw.uiStartup()
        let semail="fischertech00@gmail.com"
        let spw="Qwerty1!"
        let login=start.tap_Login()
        login.type_Useremail(email: semail)
        login.type_UserPassword(pw: spw)
        //login.type_Useremail(email: "blastautomation170704@gmail.com")
        //login.type_UserPassword(pw: "@utomaT1on")
        login.tap_Login()
        
    }
    
    func ttestStartup(){
        print("Start testExample ============")
        XCUIDevice.shared().orientation = .faceUp
        let fw=UIFramework(app: XCUIApplication())
        self.pw="@utoMat1on"
        // startup screen ------------------------------------------------------
        var start=fw.uiStartup()
        start.ttest_startup_titles()
        let login=start.tap_Login()
        start=login.tap_Prev()
    }
    
    func ttestCreateAccountFails(){
        print("Start testExample ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        let start=fw.uiStartup()
        //fw.uiMain()
        let newact=start.tap_Create_New_Account()
        // New account, player or coach screen ---------------------------------
        //start=newact.tap_Prev()
        // startup screen ------------------------------------------------------
        //newact=start.tap_Create_New_Account()
        // New account, player or coach screen ---------------------------------
        var newplayer = newact.tap_Player()
        //newact.tap_Coach()
        // New account, player--------------------------------------------------
        var acctForm=newplayer.tap_Youth()
        acctForm.inputAccountFormFail(FullName: "Kitty Cat",
                                      Email: acctForm.uifw.account_email,
                                      ConfirmEmail: "Z"+acctForm.uifw.account_email,
                                      Password: "automation",
                                      FailMsg: ui_Player_CreateAccount.create_account_fail.email_match.rawValue)
        
        acctForm.inputAccountFormFail(FullName: "Kitty Cat",
                                      Email: acctForm.uifw.account_email,
                                      ConfirmEmail: acctForm.uifw.account_email,
                                      Password: "a",
                                      FailMsg: ui_Player_CreateAccount.create_account_fail.Invalid_password.rawValue)
        
        acctForm.inputAccountFormFail(FullName: "",
                                      Email: acctForm.uifw.account_email,
                                      ConfirmEmail: acctForm.uifw.account_email,
                                      Password: "a",
                                      FailMsg: ui_Player_CreateAccount.create_account_fail.missing_field.rawValue)
        
        
        
        //acctForm.tap_Create_Account_Fail(fail: ui_Player_CreateAccount.create_account_fail.email_match.rawValue)
        // New Account UI Form -------------------------------------------------
        newplayer=acctForm.tap_Prev()
        // New account, player--------------------------------------------------
        acctForm=newplayer.tap_High_School_Junior_Varsity()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_High_School_Varsity()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_Middle_School()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_Minor_League()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_Professional()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_College()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_Other()
        newplayer=acctForm.tap_Prev()
        
    }
    
}
