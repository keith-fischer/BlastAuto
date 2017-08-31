//
//  BaseballUIFWStatsViews.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/21/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest
public class ui_StatsViews: ui_Main{
    //var icbackbutton: XCUIElement
    //let uifw: UIFramework
    //    init(fw: UIFramework,welcome1: Bool?=false){
    //        super.init(fw1:fw,welcome:welcome1)
    init(fw: UIFramework){
        super.init(fw1:fw)
        self.uifw.fwapp=XCUIApplication()
        print(type(of: self))
        sleep(1)
        self.uifw.fwapp=XCUIApplication()
        self.uifw.fwapp.navigationBars["NGABaseball.ProgressView"].staticTexts["Progress"].tap()
    }
}

//    func LowestBatSpeed(){
//        
//        
//    }
//    
//    func HighestBatSpeed(){
//        
//    }
//    
//    func LowestPeakHandSpeed(){
//        
//    }
//    
//    func HighestPeakHandSpeed(){
//        
//    }
//    
//    func LowestAttackAngle(){
//        
//    }
//    
//    func HighestAttackAngle(){
//        
//    }
//    
//    func LowestTimeToContact(){
//        
//    }
//    
//    func HighestTimeToContact(){
//        
//    }
//    
//    func LowestBlastFactor(){
//        
//    }
//    
//    func HighestBlastFactor(){
//        
//    }
//    
//    
//    func LowestPower(){
//        
//    }
//    
//    func HighestPower(){
//        
//    }
//    
//    
//    func LowestPeakSpeed(){
//        
//    }
//    
//    func HighestPeakSpeed(){
//        
//    }
//    
//    
//    func LowestOnPlane(){
//        
//    }
//    
//    func HighestOnPlane(){
//        
//    }
//    
//    
//    func LowestBodyRotation(){
//        
//    }
//    
//    func HighestBodyRotation(){
//        
//    }
//    
//    
//    func LowestVerticalBatRotation(){
//        
//    }
//    
//    func HighestVerticalBatRotation(){
//        
//    }
//    
//}
