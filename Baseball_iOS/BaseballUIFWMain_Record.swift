//
//  BaseballUIFWMain_Record.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/8/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest

public class ui_Record{
    //var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        
        self.uifw = fw
        print(type(of: self))
    }
    func tab_Close(){
        self.uifw.fwapp.buttons["icClose"].tap()
    }
}
