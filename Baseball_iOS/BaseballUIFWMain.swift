//
//  BaseballUIFWMain.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/5/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest

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
    let icbackbutton: XCUIElement
    init(fw1: UIFramework){
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

/*#####################################
 user
 Main user screen
 #######################################*/
public class ui_Main:ui_Bottom_Buttons{
    //var icbackbutton: XCUIElement
    //let uifw: UIFramework
    var new_welcome: Bool
    init(fw1 fw2: UIFramework,welcome: Bool?=false){
        new_welcome=welcome!
        super.init(fw1: fw2)
        
        //self.uifw=fw
        print(type(of: self))
        //self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
        print("Check Welcome="+String(new_welcome))
        if (self.new_welcome){
            self.uifw.fwapp.staticTexts["Welcome to Blast Baseball!"].tap()
            self.uifw.fwapp.staticTexts["The Blast Baseball app helps to capture your swings and video highlights, provides drills for improving and delivers insights on your progress. Start getting better today. You currently do not have any swings stored in your device, lets get started."].tap()
        }
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




