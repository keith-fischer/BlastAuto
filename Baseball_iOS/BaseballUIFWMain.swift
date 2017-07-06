//
//  BaseballUIFWMain.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/5/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest


public class ui_Bottom_Buttons{
    let uifw: UIFramework
    let welcome: Bool
    init(fw: UIFramework,welcome: Bool?=false){
        self.uifw=fw
        self.welcome=welcome!
    }
//    func tap_Progress() -> ui_Progress(){
//    
//        return ui_Progress(fw: self.uifw)
//    }
}

/*#####################################
 user
 Main user screen
 #######################################*/
public class ui_Main{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    let new_welcome: Bool
    init(fw: UIFramework,welcome: Bool?=false){
        //super init(fw,welcome)
        self.new_welcome=welcome!
        self.uifw=fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
        print("waiting")
        if (self.new_welcome){
            self.uifw.fwapp.staticTexts["Welcome to Blast Baseball!"].tap()
            self.uifw.fwapp.staticTexts["The Blast Baseball app helps to capture your swings and video highlights, provides drills for improving and delivers insights on your progress. Start getting better today. You currently do not have any swings stored in your device, lets get started."].tap()
        }
    }
    
    func tap_GetStarted() -> ui_Dashboard{
        self.uifw.fwapp.buttons["Get Started"].tap()
        return ui_Dashboard(fw:self.uifw)
        //return to progress
        //self.uifw.fwapp.tabBars.children(matching: .button).element(boundBy: 1).tap()
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
}

public class ui_Dashboard{
    //var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
    }
}

//public class ui_Progress: ui_Bottom_Buttons{
//    var icbackbutton: XCUIElement
//    let uifw: UIFramework
//    init(fw: UIFramework){
//        self.uifw = fw
//        print(type(of: self))
//        
//}
//public class ui_videos: ui_Bottom_Buttons{
//    var icbackbutton: XCUIElement
//    let uifw: UIFramework
//    init(fw: UIFramework){
//        self.uifw = fw
//        print(type(of: self))
//        
//}
//public class ui_Training: ui_Bottom_Buttons{
//    var icbackbutton: XCUIElement
//    let uifw: UIFramework
//    init(fw: UIFramework){
//        self.uifw = fw
//        print(type(of: self))
//        
//}
//public class ui_Record{
//    var icbackbutton: XCUIElement
//    let uifw: UIFramework
//    init(fw: UIFramework){
//        self.uifw = fw
//        print(type(of: self))
//        
//}

