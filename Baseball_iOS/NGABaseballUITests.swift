//
//  NGABaseballUITests.swift
//  NGABaseballUITests
//
//  Created by New Computer on 6/21/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import XCTest
import Foundation

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
    var accountemail:String = ""
    static var pw: String = "@utoMat1on"
    var accountname: String = ""
    
    override func setUp() {
        super.setUp()
        NGABaseballUITests.pw=""
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
//        let app = XCUIApplication()
//        setupSnapshot(app)
//        app.launch()

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
        NGABaseballUITests.pw="@utoMat1on"
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
        print(type(of: self))
        print("password:"+NGABaseballUITests.pw)
        NGABaseballUITests.pw="@utoMat1on"
        print("password:"+NGABaseballUITests.pw)

        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        fw.printinfo(msg: "startup",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        let start=fw.uiStartup()
        fw.printinfo(msg: "new account",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        let newact=start.tap_Create_New_Account()
        // New account, player or coach screen ---------------------------------
        //start=newact.tap_Prev()
        // startup screen ------------------------------------------------------
        //newact=start.tap_Create_New_Account()
        // New account, player or coach screen ---------------------------------
        fw.printinfo(msg: "i'm a player",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        let newplayer = newact.tap_Player()
        // New account, player--------------------------------------------------
        fw.printinfo(msg: "youth",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        let acctForm=newplayer.tap_Youth()
        let logininfo=fw.account_name//"blastautomation170704"
        fw.printinfo(msg: "create account",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        var welcome=acctForm.inputAccountForm(FullName:logininfo,// acctForm.uifw.account_name,
                                            Email:logininfo+"@gmail.com",// acctForm.uifw.account_email,
                                            ConfirmEmail:logininfo+"@gmail.com",// acctForm.uifw.account_email,
                                            Password: NGABaseballUITests.pw)
        fw.printinfo(msg: "welcome",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        let basic=welcome.tap_Basic_Details()
        fw.printinfo(msg: "basic details",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        sleep(1)
        basic.FirstName(txt: "FirstName")
        basic.LastName(txt: "LastName")
        basic.Weight(weight: "150 lbs")
        basic.Gender(gender: "Female")
        basic.BirthDate(year: "2000", month: "July", date: "12")
        basic.Height(ft: "5 ft", inches: "3 in")
        basic.Bats(bat: "Left")
        welcome=basic.Save()
        fw.printinfo(msg: "back to welcome",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        let bat=welcome.tap_Add_Bat()
        bat.Brand(brand: "Easton Baseball")
        bat.Model(model: "FS200 -10")
        bat.Nickname(nick: "Z")
        bat.Length(length: "33 in")
        bat.Weight(weight: "30 oz")
        let equipt=bat.tap_AddNewBat()
        equipt.tap_VolumeOn()
        sleep(4)
        equipt.tap_VolumeOff()
        welcome=equipt.tap_Done()
        let sensor=welcome.tap_Register_Sensor()
        sensor.tap_help_buy_web()
        sensor.tap_help_buyweb_back()
        sensor.set_serial_number(serial: "12345678")
        sensor.tap_Done()
        sleep(5)
        sensor.handle_sensor_error_popup()
        welcome=sensor.tap_Prev()
        
        
        let main=welcome.tap_Skip()
        _=main.tap_GetStarted()
        
        self.accountname=fw.account_name
        self.accountemail=fw.account_email
        
        //newplayer=mmain.tap_Prev()
        //start=newact.tap_Prev()

//        XCUIApplication().navigationBars["Create Account"].staticTexts["Create Account"].tap()
        
        
        //ui_welcome
        //verify welcom user name
        //verify user setup text instructions
        //tap to ui_BasicDetails
        //
        sleep(10)
    }
    
    
    func testMain_Progress_Welcome(){
        print("testMain ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        fw.printinfo(msg: "startup",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        sleep(10) //wait for account info fetch
        let main=ui_Main(fw1:fw,welcome:true)
        let dash=main.tap_GetStarted()
        let prog=dash.tap_Progress()
        let lmenu=prog.tap_LeftMenu()
        lmenu.tap_closeMenu()
        let train=main.tap_Training()
        let vids=train.tap_Videos()
        let rec=vids.tap_Record()
        rec.tab_Close()
        sleep(10)
        

    }
    /// <#Description#>
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
        login.tap_Login()
    
    }


    /// <#Description#>
    func testProfile(){
        print("testProfile ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        fw.printinfo(msg: "startup",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        sleep(10) //wait for account info fetch
        let main=ui_Main(fw1:fw,welcome:false)
        let menu=main.tap_LeftMenu()
        let profile=menu.tap_UserProfile()

        profile.tap_Bio()
        profile.fields_Bio.FirstName(txt: "ABCDEFGH")
        print(profile.fields_Bio.FirstName())
        print(profile.fields_Bio.LastName())
        print(profile.fields_Bio.LevelOfPlay())
        print(profile.fields_Bio.BirthDate())
        print(profile.fields_Bio.Gender())
        print(profile.fields_Bio.Bats())
        print(profile.fields_Bio.Height())
        print(profile.fields_Bio.Weight())

        profile.fields_Bio.BirthDate(year: "1999", month: "August", day: "13")
        profile.fields_Bio.Gender(txt: "Male")
        profile.fields_Bio.Bats(txt: "Right")
        profile.fields_Bio.Height(feet: "6 ft", inches: "7 in")
        profile.fields_Bio.Weight(txt: "144 lbs")
        profile.fields_Bio.LevelOfPlay(txt: ["Other","Youth","Professional MLB"])
        print(profile.fields_Bio.LevelOfPlay())
        profile.tap_Account()
        print(profile.fields_Account.Email())
        print(profile.fields_Account.AccountType())
        print(profile.fields_Account.PhoneNumber())
        print(profile.fields_Account.ZipCode())
        profile.fields_Account.PhoneNumber(txt: "9998881234")
        profile.fields_Account.ZipCode(txt: "12345")
        profile.fields_Account.AccountType(txt: "Coach")
        sleep(10)
        profile.tap_Coach()
        
        var loginfo=profile.fields_Coach.AcceptNewStudents()
        print(loginfo)
        
        profile.fields_Coach.AcceptNewStudents(studentlist: ["All","All","All"])
        loginfo=profile.fields_Coach.AcceptNewStudents()
        print(loginfo)
        
        profile.fields_Coach.AcceptNewStudents(studentlist: ["Local"])
        loginfo=profile.fields_Coach.AcceptNewStudents()
        print(loginfo)
        
        profile.fields_Coach.AcceptNewStudents(studentlist: ["Online"])
        loginfo=profile.fields_Coach.AcceptNewStudents()
        print(loginfo)

        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)
        
        profile.fields_Coach.ServicesProvided(serviceslist: ["All","All","All"])//reset return none
        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)
        
        profile.fields_Coach.ServicesProvided(serviceslist: ["All","Hitting","Pitching","Virtual Coaching"])
        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)
        
        profile.fields_Coach.ServicesProvided(serviceslist: ["All","All","Hitting","Pitching","Virtual Coaching"])
        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)
        
        profile.fields_Coach.ServicesProvided(serviceslist: ["All"])//return all
        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)
        
        profile.fields_Coach.ServicesProvided(serviceslist: ["All"])//inverse return none
        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)



        profile.tap_BlastConnect()
        print(profile.uifw.fwapp.descendants(matching: .any).debugDescription)
        print(profile.fields_BlastConnect.Email())
        print(profile.fields_BlastConnect.Password())
        profile.fields_BlastConnect.Email(txt: "dog@gmail.com")
        profile.fields_BlastConnect.Password(txt: "zQ!gfsh7j")
        profile.fields_BlastConnect.tap_Login_Fail(waitResponseSec: 8)
        profile.tap_Close()
        sleep(5)

    }

}



