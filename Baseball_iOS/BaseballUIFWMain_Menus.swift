//
//  BaseballUIFWMain_Menus.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/8/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest




class ui_menuLeft{
    //var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        //super init(fw,welcome)
        self.uifw=fw
        print(type(of: self))
        
    }
    func tap_closeMenu(){
        self.uifw.fwapp.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 0).children(matching: .other).element(boundBy: 0).tap()
        
    }
    
    
}
