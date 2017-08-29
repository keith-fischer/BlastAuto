//
//  Test_AccountSetup.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/16/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import XCTest
import Foundation


extension NGABaseballUITests{
    func ttestCreateAccount(){
        print("testCreateAccount ============")
        print(type(of: self))
        print("password:"+(TESTDATA?.getTestValueStr(fieldname: "signin_pw"))!)
        //self.pw="@utoMat1on"
        print("password:"+(TESTDATA?.getTestValueStr(fieldname: "signin_pw"))!)
        
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework()
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
            Password: (TESTDATA?.getTestValueStr(fieldname: "signin_pw"))!)
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
        
//        self.accountname=fw.account_name
//        self.accountemail=fw.account_email
        
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
}
