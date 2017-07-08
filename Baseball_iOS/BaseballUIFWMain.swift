//
//  BaseballUIFWMain.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/5/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//


//
////main toolbar bottom
//let app = XCUIApplication()
//let tabBarsQuery = app.tabBars
////training
//tabBarsQuery.children(matching: .button).element(boundBy: 2).tap()
////dashboard
//tabBarsQuery.children(matching: .button).element(boundBy: 3).tap()
////videos
//tabBarsQuery.children(matching: .button).element(boundBy: 4).tap()
////progress
//tabBarsQuery.children(matching: .button).element(boundBy: 1).tap()
////record
//tabBarsQuery.buttons["icVideoCamera"].tap()
////record close
//app.buttons["icClose"].tap()
//


public class ui_Bottom_Buttons{
    let uifw: UIFramework
    var icbackbutton: XCUIElement
    init(fw1: UIFramework,welcome: Bool?=false){
        self.uifw=fw1
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
    }
    
    func tap_Progress() -> ui_Progress{
        self.uifw.fwapp.tabBars.children(matching: .button).element(boundBy: 1).tap()
        return ui_Progress(fw:self.uifw)
    }
    
    func tap_Training() -> ui_Training{
        self.uifw.fwapp.tabBars.children(matching: .button).element(boundBy: 2).tap()
        return ui_Training(fw:self.uifw)
    }
    
    func tap_Record() -> ui_Record{
        self.uifw.fwapp.tabBars.buttons["icVideoCamera"].tap()
        return ui_Record(fw:self.uifw)
    }
    
    func tap_dashboard() -> ui_Dashboard{
        self.uifw.fwapp.tabBars.children(matching: .button).element(boundBy: 3).tap()
        return ui_Dashboard(fw:self.uifw)
    }
    
    func tap_Videos() -> ui_Videos{
        self.uifw.fwapp.tabBars.children(matching: .button).element(boundBy: 4).tap()
        return ui_Videos(fw:self.uifw)
    }
    
}


/*#####################################
 user
 Main user screen
 #######################################*/
public class ui_Main:ui_Bottom_Buttons{
    //var icbackbutton: XCUIElement
    //let uifw: UIFramework
    var new_welcome: Bool
    override init(fw1 fw2: UIFramework,welcome: Bool?=false){
        self.new_welcome=welcome!
        super.init(fw1: fw2)
        
        //self.uifw=fw
        print(type(of: self))
        //self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
        print("waiting")
        if (self.new_welcome){
            self.uifw.fwapp.staticTexts["Welcome to Blast Baseball!"].tap()
            self.uifw.fwapp.staticTexts["The Blast Baseball app helps to capture your swings and video highlights, provides drills for improving and delivers insights on your progress. Start getting better today. You currently do not have any swings stored in your device, lets get started."].tap()
        }
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
    
    func tap_LeftMenu() -> ui_menuLeft{
        self.uifw.fwapp.navigationBars["NGABaseball.ProgressView"].children(matching: .button).element.tap()
        return ui_menuLeft(fw: self.uifw)
    }
    
    func tap_GetStarted() -> ui_Dashboard{
        self.uifw.fwapp.buttons["Get Started"].tap()
        return ui_Dashboard(fw:self.uifw)
        //return to progress
        //self.uifw.fwapp.tabBars.children(matching: .button).element(boundBy: 1).tap()
    }

}




////record==================
//XCUIDevice.shared().orientation = .portrait

//
////main toolbar bottom
//let app = XCUIApplication()
//let tabBarsQuery = app.tabBars
////training
//tabBarsQuery.children(matching: .button).element(boundBy: 2).tap()
////dashboard
//tabBarsQuery.children(matching: .button).element(boundBy: 3).tap()
////videos
//tabBarsQuery.children(matching: .button).element(boundBy: 4).tap()
////progress
//tabBarsQuery.children(matching: .button).element(boundBy: 1).tap()
////record
//tabBarsQuery.buttons["icVideoCamera"].tap()
////record close
//app.buttons["icClose"].tap()
//
////left menu
////open menu
//
//let app = XCUIApplication()
////open menu
//app.navigationBars["NGABaseball.ProgressView"].children(matching: .button).element.tap()
////close menu tap far right
//app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 0).children(matching: .other).element(boundBy: 0).tap()
//
////profile name
//XCUIApplication().staticTexts["automation1499442505FirstName LastName"].tap()
//
////sensors
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.buttons["Sensors"].tap()
//
//let mySensorsNavigationBar = app.navigationBars["My Sensors"]
//mySensorsNavigationBar.staticTexts["My Sensors"].tap()
//tablesQuery.staticTexts["No Sensors Found"].tap()
//tablesQuery.staticTexts["No sensors are setup with your account. Please make sure your sensor is charged prior and then proceed with adding the sensor to your account."].tap()
//tablesQuery.staticTexts["Have no sensor? Learn more about Blast Baseball and purchase a sensor online at: https://blastmotion.com/products/baseball/"].tap()
//
//let blastBaseballNavigationBar = app.navigationBars["Blast Baseball"]
//blastBaseballNavigationBar.staticTexts["Blast Baseball"].tap()
//blastBaseballNavigationBar.buttons["icBack"].tap()
//mySensorsNavigationBar.buttons["Debug"].tap()
//app.navigationBars["Debug"].buttons["icBack"].tap()
//mySensorsNavigationBar.buttons["icClose"].tap()
//
////my bats
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.buttons["My Bats"].tap()
//
//let myBatsNavigationBar = app.navigationBars["My Bats"]
//myBatsNavigationBar.staticTexts["My Bats"].tap()
//tablesQuery.staticTexts["33 in / 30 oz"].tap()
//
//let batDetailsNavigationBar = app.navigationBars["Bat Details"]
//batDetailsNavigationBar.staticTexts["Bat Details"].tap()
//batDetailsNavigationBar.buttons["icBack"].tap()
//myBatsNavigationBar.buttons["icClose"].tap()
//
////settings
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.buttons["Settings"].tap()
//
//let settingsNavigationBar = app.navigationBars["Settings"]
//settingsNavigationBar.staticTexts["Settings"].tap()
//app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element.tap()
//tablesQuery.staticTexts["Auto Upload Settings"].tap()
//
//let autoVideoUploadStaticText = tablesQuery.cells.containing(.staticText, identifier:"Auto Video Upload").children(matching: .staticText).matching(identifier: "Auto Video Upload").element(boundBy: 0)
//autoVideoUploadStaticText.tap()
//autoVideoUploadStaticText.tap()
//tablesQuery.cells.containing(.staticText, identifier:"Use Cellular Data").children(matching: .staticText).matching(identifier: "Auto Upload when not connected to a WiFi network. Auto Upload files of any size or only those smaller than 50 MB").element(boundBy: 0).tap()
//tablesQuery.staticTexts["Use Cellular Data"].tap()
//tablesQuery.staticTexts["Storage Settings"].tap()
//
//let saveOriginalVideoCellsQuery = tablesQuery.cells.containing(.staticText, identifier:"Save Original Video")
//saveOriginalVideoCellsQuery.children(matching: .staticText).matching(identifier: "Save the full length video capture during a session").element(boundBy: 0).tap()
//saveOriginalVideoCellsQuery.children(matching: .staticText).matching(identifier: "Save Original Video").element(boundBy: 0).tap()
//tablesQuery.staticTexts["Record Settings"].tap()
//tablesQuery.staticTexts["Record Video"].tap()
//tablesQuery.staticTexts["Record Video"].tap()
//tablesQuery.staticTexts["720p HD at 30 fps"].tap()
//
//let staticText = tablesQuery.staticTexts["1080p HD at 30 fps"]
//staticText.tap()
//tablesQuery.staticTexts["4K HD at 30 fps"].tap()
//tablesQuery.staticTexts["1080p HD at 60 fps"].tap()
//staticText.tap()
//
//let recordVideoNavigationBar = app.navigationBars["Record Video"]
//recordVideoNavigationBar.staticTexts["Record Video"].tap()
//recordVideoNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Record Slo-mo"].tap()
//
//let recordSlowMotionNavigationBar = app.navigationBars["Record Slow Motion"]
//recordSlowMotionNavigationBar.staticTexts["Record Slow Motion"].tap()
//tablesQuery.staticTexts["Record Slow Motion"].tap()
//tablesQuery.staticTexts["720p HD at 120 fps"].tap()
//tablesQuery.staticTexts["1080p HD at 120 fps"].tap()
//tablesQuery.staticTexts["720p HD at 240 fps"].tap()
//tablesQuery.staticTexts["A minute of video will be approximately: *230 MB with 720p HD at 120 fps *350 MB with 1080p HD at 120 fps *300 MB with 720p HD at 240 fps"].tap()
//recordSlowMotionNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Progress Goals"].tap()
//
//let showGoalsStaticText = tablesQuery.cells.containing(.staticText, identifier:"Show Goals").children(matching: .staticText).matching(identifier: "Show Goals").element(boundBy: 0)
//showGoalsStaticText.tap()
//showGoalsStaticText.tap()
//settingsNavigationBar.buttons["icClose"].tap()
//
////help tips
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.buttons["Help & Tips"].tap()
//
//let helpTipsNavigationBar = app.navigationBars["Help & Tips"]
//helpTipsNavigationBar.staticTexts["Help & Tips"].tap()
//tablesQuery.staticTexts["User Guide"].tap()
//app.navigationBars["User Guide"].staticTexts["User Guide"].tap()
//tablesQuery.staticTexts["App Overview"].tap()
//
//let appOverviewNavigationBar = app.navigationBars["App Overview"]
//appOverviewNavigationBar.staticTexts["App Overview"].tap()
//appOverviewNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["FAQs"].tap()
//
//let faqsNavigationBar = app.navigationBars["FAQs"]
//faqsNavigationBar.staticTexts["FAQs"].tap()
//faqsNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Tech Support"].tap()
//
//let techSupportNavigationBar = app.navigationBars["Tech Support"]
//techSupportNavigationBar.staticTexts["Tech Support"].tap()
//techSupportNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Call Help Desk"].tap()
//
//let alert = app.alerts["1 (855) 632-5278"]
//alert.staticTexts["1 (855) 632-5278"].tap()
//alert.buttons["Cancel"].tap()
//tablesQuery.staticTexts["Legal"].tap()
//
//let legalNavigationBar = app.navigationBars["Legal"]
//legalNavigationBar.staticTexts["Legal"].tap()
//tablesQuery.staticTexts["Regulatory"].tap()
//
//let regulatoryNavigationBar = app.navigationBars["Regulatory"]
//regulatoryNavigationBar.staticTexts["Regulatory"].tap()
//regulatoryNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Privacy Policy"].tap()
//
//let privacyPolicyNavigationBar = app.navigationBars["Privacy Policy"]
//privacyPolicyNavigationBar.staticTexts["Privacy Policy"].tap()
//privacyPolicyNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Terms of Use"].tap()
//
//let termsOfUseNavigationBar = app.navigationBars["Terms of Use"]
//termsOfUseNavigationBar.staticTexts["Terms of Use"].tap()
//termsOfUseNavigationBar.buttons["icBack"].tap()
//legalNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["About"].tap()
//
//let aboutNavigationBar = app.navigationBars["About"]
//aboutNavigationBar.staticTexts["About"].tap()
//tablesQuery.staticTexts["Version 4.1.0"].tap()
//tablesQuery.staticTexts["THE COMPLETE HITTING SOLUTION"].tap()
//tablesQuery.children(matching: .cell).element(boundBy: 5).children(matching: .staticText).element.tap()
//aboutNavigationBar.buttons["icBack"].tap()
//helpTipsNavigationBar.buttons["icClose"].tap()
//
////whats new
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.buttons["What's New"].tap()
//tablesQuery.staticTexts["WHAT'S NEW"].tap()
//tablesQuery.staticTexts["Coach Mode"].tap()
//tablesQuery.textViews.containing(.link, identifier:"Learn more about Coach Mode.").element.tap()
//tablesQuery.staticTexts["Improved Baseball Metrics & Goals"].tap()
//tablesQuery.textViews.containing(.link, identifier:"Learn more about the Improved Baseball Metrics.").element.tap()
//app.navigationBars["NGABaseball.BLView"].buttons["icClose"].tap()
//
////logout
//XCUIApplication().buttons["Logout (STG)"].tap()
////returns you to startup screen
