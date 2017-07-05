//
//  BaseballUIFWMain.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/5/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation



/*#/*#####################################
 user
 Main user screen
 #######################################*/
 public class ui_Main{
 var icbackbutton: XCUIElement
 let uifw: UIFramework
 init(fw: UIFramework){
 self.uifw = fw
 print(type(of: self))
 self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
 print("waiting")
 self.uifw.fwapp.tables.buttons["Create Account"].tap()
 }
 
 func tap_Prev() -> ui_Player{
 self.icbackbutton.tap()
 return ui_Player(fw: self.uifw)
 }
 }
