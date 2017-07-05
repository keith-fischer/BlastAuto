//
//  BaseballUIFWStartup.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/5/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation

//startsup as signed out user or default at the main screen


/*#####################################
 startup
 First screen with animation
 #######################################*/
public class ui_Startup{
    let uifw: UIFramework
    var createNewAccountButton: XCUIElement
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.createNewAccountButton = self.uifw.fwapp.buttons["Create New Account"]
    }
    func tap_Create_New_Account() -> ui_AccountType{
        self.createNewAccountButton.tap()
        return ui_AccountType(fw: self.uifw)
    }
    func tap_Login() -> ui_Login{
        self.uifw.fwapp.staticTexts["Already have an account? Sign in here."].tap()
        return ui_Login(fw:self.uifw)
        //self.uifw.fwapp.tables.buttons["icClose"].tap()
    }
    
    func test_startup_titles(){
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
