//
//  BaseballUIFWLogin.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/5/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest
/*#####################################
 user
 Login user screen
 #######################################*/
public class ui_Login{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        self.uifw.fwapp.staticTexts["THE COMPLETE HITTING SOLUTION"].tap()
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
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
    func tap_Prev() -> ui_Startup{
        self.uifw.fwapp.tables.buttons["icClose"].tap()
        return ui_Startup(fw: self.uifw)
    }
    
    func type_Useremail(email:String){
        //input email
        let txtemail=self.getTextField(id: 4)
        txtemail.tap()
        txtemail.typeText(email)
        //app.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.tap()
        //app.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.typeText("blastautomation170704@gmail.com")
        
        //app.tables.textFields.containing(.button, identifier:"Clear text").element.typeText("blastautomation170704@gmail.com")
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func type_UserPassword(pw:String){
        //input pw
        let txtpw=self.getTextField(id: 5, secured: true)
        txtpw.tap()
        txtpw.typeText(pw)
        //app.tables.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.tap()
        //app.tables.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.typeText("@utomaT1on")
        //app.tables.textFields.containing(.button, identifier:"Clear text").element.typeText("@utomaT1on")
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func tap_Login() -> ui_Main{
        
        //login
        self.uifw.fwapp.tables.buttons["Log In"].tap()
        return ui_Main(fw1:self.uifw)
    }
}

