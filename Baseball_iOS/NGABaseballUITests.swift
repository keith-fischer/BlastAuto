//
//  NGABaseballUITests.swift
//  NGABaseballUITests
//
//  Created by New Computer on 6/21/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import XCTest


//class Baseball_UI{
//    var app: XCUIElement
//    init(app: XCUIElement){
//        self.app = app
//    }
//    func Title(){
//        print(self.app.title)
//    }
//}

class NGABaseballUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStartup(){
        print("Start testExample ============")
        XCUIDevice.shared().orientation = .faceUp
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        var start=fw.uiStartup()
        start.test_startup_titles()
        let login=start.tap_Login()
        start=login.tap_Prev()
    }
    
    func testCreateAccountFails() {
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
    
    func testCreateAccount(){
        print("testCreateAccount ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        var start=fw.uiStartup()
        let newact=start.tap_Create_New_Account()
        // New account, player or coach screen ---------------------------------
        //start=newact.tap_Prev()
        // startup screen ------------------------------------------------------
        //newact=start.tap_Create_New_Account()
        // New account, player or coach screen ---------------------------------
        var newplayer = newact.tap_Player()
        // New account, player--------------------------------------------------
        let acctForm=newplayer.tap_Youth()
        var logininfo=fw.account_name//"blastautomation170704"
        
        var welcome=acctForm.inputAccountForm(FullName:logininfo,// acctForm.uifw.account_name,
                                            Email:logininfo+"@gmail.com",// acctForm.uifw.account_email,
                                            ConfirmEmail:logininfo+"@gmail.com",// acctForm.uifw.account_email,
                                            Password: "@utomaT1on")
        
        let basic=welcome.tap_Basic_Details()
        basic.FirstName(txt: "FirstName")
        basic.LastName(txt: "LastName")
        sleep(1)
        basic.Weight(weight: "150 lbs")
        basic.Gender(gender: "Female")
        basic.BirthDate(year: "2000", month: "July", date: "12")
        basic.Height(ft: "5 ft", inches: "3 in")

        welcome=basic.Save()
        
        
        //newplayer=mmain.tap_Prev()
        //start=newact.tap_Prev()

//        XCUIApplication().navigationBars["Create Account"].staticTexts["Create Account"].tap()
        
        
        //ui_welcome
        //verify welcom user name
        //verify user setup text instructions
        //tap to ui_BasicDetails
        //
    }
    
    func testLogin(){
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
        let main=login.tap_Login()
    }
    
    
//        let app=fw.fwapp
//        //app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element.tap()
//        app.staticTexts["Already have an account? Sign in here."].tap()
//        app.staticTexts["THE COMPLETE HITTING SOLUTION"].tap()
//        //input email
//        app.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.tap()
//        app.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.typeText("blastautomation170704@gmail.com")
//
//        //app.tables.textFields.containing(.button, identifier:"Clear text").element.typeText("blastautomation170704@gmail.com")
//        app.toolbars.buttons["Done"].tap()
//        
//
//        //login
//        app.tables.buttons["Log In"].tap()
        



//    
//    
//    func testSetup_Welcome(){
//        XCUIDevice.shared().orientation = .portrait
//        let fw=UIFramework(app: XCUIApplication())
//        
//        let tablesQuery = XCUIApplication().tables
//        fw.fwapp.tables.staticTexts["Welcome BlastAutomation170705"].tap()
//        fw.fwapp.tables.staticTexts["To get started, please complete your account details. Have your sensor ready to register and connect it. Finish your setup by adding a bat."].tap()
//        //select Basic Details*
//        
//
//        fw.fwapp.tables.staticTexts["Basic Details*"].tap()
//        //Basic Details*
//        fw.fwapp.navigationBars["Basic Details"].staticTexts["Basic Details"].tap()
//        
//        fw.fwapp.tables.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element.tap()
//        
//        
//        fw.fwapp.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element
//        textField2.tap()
//        textField.tap()
//        textField.typeText("z")
//        textField2.tap()
//        textField2.typeText("Llastt")
//        tablesQuery.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.tap()
//        
//        let datePickersQuery = app.datePickers
//        datePickersQuery.pickerWheels["July"].tap()
//        datePickersQuery.pickerWheels["5"].tap()
//        datePickersQuery.pickerWheels["2017"].tap()
//        
//        let doneButton = app.toolbars.buttons["Done"]
//        doneButton.tap()
//        
//        let textField3 = tablesQuery.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element
//        textField3.tap()
//        textField3.typeText("921299")
//        doneButton.tap()
//        tablesQuery.children(matching: .cell).element(boundBy: 7).children(matching: .textField).element.tap()
//        
//        let pickerWheel = app.pickers.children(matching: .pickerWheel).element
//        pickerWheel.tap()
//        app.pickerWheels["Female"].tap()
//        doneButton.tap()
//        tablesQuery.children(matching: .cell).element(boundBy: 8).children(matching: .textField).element.tap()
//        pickerWheel.tap()
//        app.pickerWheels["Left"].tap()
//        doneButton.tap()
//        tablesQuery.children(matching: .cell).element(boundBy: 9).children(matching: .textField).element.tap()
//        app.pickerWheels["5 ft"].tap()
//        app.pickerWheels["4 in"].tap()
//        doneButton.tap()
//        tablesQuery.children(matching: .cell).element(boundBy: 10).children(matching: .textField).element.tap()
//        app.pickerWheels["130 lbs"].tap()
//        doneButton.tap()
//        
//
//        basicDetailsNavigationBar.buttons["Save"].tap()
//        
//        //skip
//        
//        let inboxNavigationBar = XCUIApplication().navigationBars["Inbox"]
//        let inboxStaticText = inboxNavigationBar.staticTexts["Inbox"]
//        inboxStaticText.tap()
//        inboxStaticText.tap()
//        inboxStaticText.tap()
//        inboxStaticText.tap()
//        inboxNavigationBar.buttons["icClose"].tap()
//        
//    }
    
    func testMain(){
        XCUIDevice.shared().orientation = .portrait
        let fw=UIFramework(app: XCUIApplication())

        let main=ui_Main(fw:fw,welcome:true)
        main.tap_GetStarted()
    }
}



