//
//  BaseballUIFWSetup.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/5/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation


/*#####################################
 user
 User Profile
 #######################################*/
public class ui_UserProfile{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
    func tap_Save() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
    
}

/*#####################################
 user
 Register Sensor user screen
 #######################################*/
public class ui_AddBat{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
}


/*#####################################
 user
 Register Sensor user screen
 #######################################*/
public class ui_RegisterSensor{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
}

/*#####################################
 user
 Basic Details user screen
 #######################################*/
public class ui_BasicDetails{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
}
####################################
user
User Welcome
#######################################*/
public class ui_Welcome{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
        uifw.showelements(listName: "staticTexts", lists: self.uifw.fwapp.tables.staticTexts)
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
    func tap_Details() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
    func tap_Basic_Details() -> ui_BasicDetails{
        self.icbackbutton.tap()
        return ui_BasicDetails(fw: self.uifw)
    }
    func tap_Register_Sensor() -> ui_RegisterSensor{
        self.icbackbutton.tap()
        return ui_RegisterSensor(fw: self.uifw)
    }
    func tap_Add_Bat() -> ui_AddBat{
        self.icbackbutton.tap()
        return ui_AddBat(fw: self.uifw)
    }
}

/*#####################################
 user
 Details user screen
 #######################################*/
public class ui_Details{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
}


public class ui_AddBat{
    //============
    enum BAT_MAKE{
        case "DeMarini",
        case "Easton Baseball",
        case "",
        case "",
        case ""
    }
    enum BAT_TYPE_DeMarini{
        case "Bustos Fast Pitch",
        "CF5 BBCor",
        "CF5 Fast Pitch",
        "CF5 Insane Fast Pitch",
        "CF5 Limited Edition BBCor",
        "CF5 Limited Edition SR",
        "CF5 Limited Edition Youth",
        "CF5 Limited Sr. League",
        "CF5 Limited Youth League",
        "CF5 SR",
        "CF5 Youth",
        "CF6 BBCor","CF6 Fast Pitch","CF6 Hope Fast Pitch","CF6 Insane Fast Pitch","CF6 SR",
        "Corndog Wood Slow Pitch",
        "Flipper Slow Pitch",
        "Fu-Dawg Slow Pitch",
        "Insane BBCor",
        "Insane SR",
        "Insane Youth",
        "M2M BBCor",
        "M2M Youth",
        "M2M Youth League",
        "Mercy Slow Pitch",
        "NT3 Juggy Slow Pitch",
        "NTU Juggy Slow Pitch",
        "Pro Maple Composite D110",
        "Pro Maple Composite D243",
        "Pro Maple Composite D271",
        "Pro Maple Composite S243",
        "Pro Maple Composite-D110 BBCor",
        "Pro Maple Composite-D243 BBCor",
        "Pro Maple Composite-D271 BBCor",
        "Raw Steel Slow Pitch",
        "Rayzr Slow Pitch",
        "SF5 Slow Pitch",
        "Stadium 2.1 Slow Pitch",
        "Stadium CL22 Slow Pitch",
        "Stadium S-One Slow Pitch",
        "The One Senior Slow Pitch",
        "Ultimate Weapon Slow Pitch",
        "Vendetta Fast Pitch",
        "Vexxium BBCor",
        "Vexxium NVS BBCor",
        "Vexxium NVS-BBCor",
        "Vexxium SR",
        "Vexxium Sr. League",
        "Vexxium Youth ",
        "Vexxium Youth League",
        "Voodoo BBCor",
        "Voodoo Overlord BBCor",
        "Voodoo Overlord Little League",
        "Voodoo Overlord SR",
        "Voodoo Paradox BBCor",
        "Voodoo Paradox SR",
        "Voodoo Paradox Sr. League",
        "Voodoo Paradox Youth ",
        "Voodoo Paradox Youth League",
        "Voodoo SR",
        "Voodoo Sr. League",
        "Voodoo X10 Limited BBCor",
        "Voodoo X10 Limited Edition BBCor",
        "Voodoo Youth ",
        "Voodoo Youth League",
        "White Steel Slow Pitch",
        "Voodoo RAW Senior League",
        "CF Insane End Load BBCOR",
        "CF Zen BBCOR",
        "CF Zen Jr. Big Barrel",
        "CF Zen Sr. League",
        "CF Zen Youth League",
        "Voodoo Jr. Big Barrel",
        "Voodoo One BBCOR",
        "Voodoo One Senior League",
        "Voodoo RAW Senior League"
    }
    
    
    app.toolbars.buttons["Done"].tap()
    
    
    
    //========================
    
    app2.pickerWheels["Easton Baseball"].tap()
    
    let app = XCUIApplication()
    app.tables.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element.tap()
    app.pickers.children(matching: .pickerWheel).element.tap()
    
    let pickerWheel = app.pickerWheels["110 Maple"]
    pickerWheel.tap()
    pickerWheel.tap()
    
    let pickerWheel2 = app.pickerWheels["271 Maple"]
    pickerWheel2.tap()
    pickerWheel2.tap()
    
    let b10UsssaSlowPitchPickerWheel = app.pickerWheels["B1.0 USSSA Slow Pitch"]
    b10UsssaSlowPitchPickerWheel.tap()
    b10UsssaSlowPitchPickerWheel.tap()
    
    let b20UsssaSlowPitchPickerWheel = app.pickerWheels["B2.0 USSSA Slow Pitch"]
    b20UsssaSlowPitchPickerWheel.tap()
    b20UsssaSlowPitchPickerWheel.tap()
    
    let b2000AshPickerWheel = app.pickerWheels["B2000 Ash"]
    b2000AshPickerWheel.tap()
    b2000AshPickerWheel.tap()
    
    let b30AsaSlowPitchPickerWheel = app.pickerWheels["B3.0 ASA Slow Pitch"]
    b30AsaSlowPitchPickerWheel.tap()
    b30AsaSlowPitchPickerWheel.tap()
    
    let b40PickerWheel = app.pickerWheels["B4.0"]
    b40PickerWheel.tap()
    b40PickerWheel.tap()
    
    let bamboo110BbcorPickerWheel = app.pickerWheels["Bamboo 110 BBCor"]
    bamboo110BbcorPickerWheel.tap()
    bamboo110BbcorPickerWheel.tap()
    
    let bambooMapleHybrid110BbcorPickerWheel = app.pickerWheels["Bamboo Maple Hybrid 110 BBCor"]
    bambooMapleHybrid110BbcorPickerWheel.tap()
    bambooMapleHybrid110BbcorPickerWheel.tap()
    
    let bsrPickerWheel = app.pickerWheels["BSR"]
    bsrPickerWheel.tap()
    bsrPickerWheel.tap()
    
    let fs110PickerWheel = app.pickerWheels["FS1 -10"]
    fs110PickerWheel.tap()
    fs110PickerWheel.tap()
    
    let fs111PickerWheel = app.pickerWheels["FS1 -11"]
    fs111PickerWheel.tap()
    fs111PickerWheel.tap()
    
    let fs1FastPitchPickerWheel = app.pickerWheels["FS1 Fast Pitch"]
    fs1FastPitchPickerWheel.tap()
    fs1FastPitchPickerWheel.tap()
    
    let fs2FastPitchPickerWheel = app.pickerWheels["FS2 Fast Pitch"]
    fs2FastPitchPickerWheel.tap()
    fs2FastPitchPickerWheel.tap()
    
    let fs20010PickerWheel = app.pickerWheels["FS200 -10"]
    fs20010PickerWheel.tap()
    fs20010PickerWheel.tap()
    
    let fs200FastPitchPickerWheel = app.pickerWheels["FS200 Fast Pitch"]
    fs200FastPitchPickerWheel.tap()
    fs200FastPitchPickerWheel.tap()
    
    let fs200FpFastPitchPickerWheel = app.pickerWheels["FS200 FP Fast Pitch"]
    fs200FpFastPitchPickerWheel.tap()
    fs200FpFastPitchPickerWheel.tap()
    
    let fs312PickerWheel = app.pickerWheels["FS3 -12"]
    fs312PickerWheel.tap()
    fs312PickerWheel.tap()
    
    let fs3FastPitchPickerWheel = app.pickerWheels["FS3 Fast Pitch"]
    fs3FastPitchPickerWheel.tap()
    fs3FastPitchPickerWheel.tap()
    
    let fs30011PickerWheel = app.pickerWheels["FS300 -11"]
    fs30011PickerWheel.tap()
    fs30011PickerWheel.tap()
    
    let fs300FastPitchPickerWheel = app.pickerWheels["FS300 Fast Pitch"]
    fs300FastPitchPickerWheel.tap()
    fs300FastPitchPickerWheel.tap()
    
    let fs300FpFastPitchPickerWheel = app.pickerWheels["FS300 FP Fast Pitch"]
    fs300FpFastPitchPickerWheel.tap()
    fs300FpFastPitchPickerWheel.tap()
    
    let fs40012PickerWheel = app.pickerWheels["FS400 -12"]
    fs40012PickerWheel.tap()
    fs40012PickerWheel.tap()
    
    let fs400FastPitchPickerWheel = app.pickerWheels["FS400 Fast Pitch"]
    fs400FastPitchPickerWheel.tap()
    fs400FastPitchPickerWheel.tap()
    
    let fs400FpFastPitchPickerWheel = app.pickerWheels["FS400 FP Fast Pitch"]
    fs400FpFastPitchPickerWheel.tap()
    fs400FpFastPitchPickerWheel.tap()
    
    let fs5010PickerWheel = app.pickerWheels["FS50 -10"]
    fs5010PickerWheel.tap()
    fs5010PickerWheel.tap()
    
    let fs50FastPitchPickerWheel = app.pickerWheels["FS50 Fast Pitch"]
    fs50FastPitchPickerWheel.tap()
    fs50FastPitchPickerWheel.tap()
    
    let fs50FpFastPitchPickerWheel = app.pickerWheels["FS50 FP Fast Pitch"]
    fs50FpFastPitchPickerWheel.tap()
    fs50FpFastPitchPickerWheel.tap()
    
    let fs50013PickerWheel = app.pickerWheels["FS500 -13"]
    fs50013PickerWheel.tap()
    fs50013PickerWheel.tap()
    
    let fs500FastPitchPickerWheel = app.pickerWheels["FS500 Fast Pitch"]
    fs500FastPitchPickerWheel.tap()
    fs500FastPitchPickerWheel.tap()
    
    let fs500FpFastPitchPickerWheel = app.pickerWheels["FS500 FP Fast Pitch"]
    fs500FpFastPitchPickerWheel.tap()
    fs500FpFastPitchPickerWheel.tap()
    
    let fx1FastPitchPickerWheel = app.pickerWheels["FX1 Fast Pitch"]
    fx1FastPitchPickerWheel.tap()
    fx1FastPitchPickerWheel.tap()
    
    let fx2FastPitchPickerWheel = app.pickerWheels["FX2 Fast Pitch"]
    fx2FastPitchPickerWheel.tap()
    fx2FastPitchPickerWheel.tap()
    
    let k2000AshPickerWheel = app.pickerWheels["K2000 Ash"]
    k2000AshPickerWheel.tap()
    k2000AshPickerWheel.tap()
    
    let l10UsssaSlowPitchPickerWheel = app.pickerWheels["L1.0 USSSA Slow Pitch"]
    l10UsssaSlowPitchPickerWheel.tap()
    l10UsssaSlowPitchPickerWheel.tap()
    
    let l20UsssaSlowPitchPickerWheel = app.pickerWheels["L2.0 USSSA Slow Pitch"]
    l20UsssaSlowPitchPickerWheel.tap()
    l20UsssaSlowPitchPickerWheel.tap()
    
    let l30PickerWheel = app.pickerWheels["L3.0"]
    l30PickerWheel.tap()
    l30PickerWheel.tap()
    
    let l40AsaSlowPitchPickerWheel = app.pickerWheels["L4.0 ASA Slow Pitch"]
    l40AsaSlowPitchPickerWheel.tap()
    l40AsaSlowPitchPickerWheel.tap()
    
    let l40HelmetPickerWheel = app.pickerWheels["L4.0 Helmet"]
    l40HelmetPickerWheel.tap()
    l40HelmetPickerWheel.tap()
    
    let l50UsssaSlowPitchPickerWheel = app.pickerWheels["L5.0 USSSA Slow Pitch"]
    l50UsssaSlowPitchPickerWheel.tap()
    l50UsssaSlowPitchPickerWheel.tap()
    
    let l60AsaSlowPitchPickerWheel = app.pickerWheels["L6.0 ASA Slow Pitch"]
    l60AsaSlowPitchPickerWheel.tap()
    l60AsaSlowPitchPickerWheel.tap()
    
    let l70AsaSlowPitchPickerWheel = app.pickerWheels["L7.0 ASA Slow Pitch"]
    l70AsaSlowPitchPickerWheel.tap()
    l70AsaSlowPitchPickerWheel.tap()
    
    let l80AsaSlowPitchPickerWheel = app.pickerWheels["L8.0 ASA Slow Pitch"]
    l80AsaSlowPitchPickerWheel.tap()
    l80AsaSlowPitchPickerWheel.tap()
    
    let l90PickerWheel = app.pickerWheels["L9.0"]
    l90PickerWheel.tap()
    l90PickerWheel.tap()
    
    let l90AsaSlowPitchPickerWheel = app.pickerWheels["L9.0 ASA Slow Pitch"]
    l90AsaSlowPitchPickerWheel.tap()
    l90AsaSlowPitchPickerWheel.tap()
    
    let lx0PickerWheel = app.pickerWheels["LX.0"]
    lx0PickerWheel.tap()
    lx0PickerWheel.tap()
    
    let makoPickerWheel = app.pickerWheels["Mako "]
    makoPickerWheel.tap()
    makoPickerWheel.tap()
    
    let mako10PickerWheel = app.pickerWheels["Mako -10"]
    mako10PickerWheel.tap()
    mako10PickerWheel.tap()
    
    let mako10234PickerWheel = app.pickerWheels["Mako -10(2-3/4)"]
    mako10234PickerWheel.tap()
    mako10234PickerWheel.tap()
    
    let mako11PickerWheel = app.pickerWheels["Mako -11"]
    mako11PickerWheel.tap()
    mako11PickerWheel.tap()
    
    let mako12PickerWheel = app.pickerWheels["Mako -12"]
    mako12PickerWheel.tap()
    mako12PickerWheel.tap()
    
    let mako8PickerWheel = app.pickerWheels["Mako -8"]
    mako8PickerWheel.tap()
    mako8PickerWheel.tap()
    
    let mako9PickerWheel = app.pickerWheels["Mako -9"]
    mako9PickerWheel.tap()
    mako9PickerWheel.tap()
    
    let makoBbcorPickerWheel = app.pickerWheels["Mako BBCor "]
    makoBbcorPickerWheel.tap()
    makoBbcorPickerWheel.tap()
    
    let makoBigBarrelPickerWheel = app.pickerWheels["Mako Big Barrel"]
    makoBigBarrelPickerWheel.tap()
    makoBigBarrelPickerWheel.tap()
    
    let makoCompPickerWheel = app.pickerWheels["Mako Comp"]
    makoCompPickerWheel.tap()
    makoCompPickerWheel.tap()
    
    let makoComp135PickerWheel = app.pickerWheels["Mako Comp -13.5"]
    makoComp135PickerWheel.tap()
    makoComp135PickerWheel.tap()
    app.pickerWheels["Mako Fast Pitch"].tap()
    
    let app = XCUIApplication()
    app.pickerWheels["Mako Fast Pitch"].tap()
    
    let makoTBallPickerWheel = app.pickerWheels["Mako T-Ball"]
    makoTBallPickerWheel.tap()
    makoTBallPickerWheel.tap()
    
    let makoTeeballPickerWheel = app.pickerWheels["Mako Teeball"]
    makoTeeballPickerWheel.tap()
    makoTeeballPickerWheel.tap()
    
    let makoTorqPickerWheel = app.pickerWheels["Mako Torq"]
    makoTorqPickerWheel.tap()
    makoTorqPickerWheel.tap()
    
    let makoTorq10PickerWheel = app.pickerWheels["Mako Torq -10"]
    makoTorq10PickerWheel.tap()
    makoTorq10PickerWheel.tap()
    
    let makoTorq5PickerWheel = app.pickerWheels["Mako Torq -5"]
    makoTorq5PickerWheel.tap()
    makoTorq5PickerWheel.tap()
    
    let makoTorq8PickerWheel = app.pickerWheels["Mako Torq -8"]
    makoTorq8PickerWheel.tap()
    makoTorq8PickerWheel.tap()
    
    let makoXl10PickerWheel = app.pickerWheels["Mako XL -10"]
    makoXl10PickerWheel.tap()
    makoXl10PickerWheel.tap()
    
    let makoYouthPickerWheel = app.pickerWheels["Mako Youth"]
    makoYouthPickerWheel.tap()
    makoYouthPickerWheel.tap()
    
    let makoYouth11PickerWheel = app.pickerWheels["Mako Youth -11"]
    makoYouth11PickerWheel.tap()
    makoYouth11PickerWheel.tap()
    
    let makoYouthFastPitchPickerWheel = app.pickerWheels["Mako Youth Fast Pitch"]
    makoYouthFastPitchPickerWheel.tap()
    makoYouthFastPitchPickerWheel.tap()
    
    let mapleCompositeMc110BbcorPickerWheel = app.pickerWheels["Maple Composite MC110 BBCor"]
    mapleCompositeMc110BbcorPickerWheel.tap()
    mapleCompositeMc110BbcorPickerWheel.tap()
    
    let mapleCompositeMc271BbcorPickerWheel = app.pickerWheels["Maple Composite MC271 BBCor"]
    mapleCompositeMc271BbcorPickerWheel.tap()
    mapleCompositeMc271BbcorPickerWheel.tap()
    
    let mlf5FungoPickerWheel = app.pickerWheels["MLF5 Fungo"]
    mlf5FungoPickerWheel.tap()
    mlf5FungoPickerWheel.tap()
    
    let mlf6FungoPickerWheel = app.pickerWheels["MLF6 Fungo"]
    mlf6FungoPickerWheel.tap()
    mlf6FungoPickerWheel.tap()
    app.pickerWheels["North American Maple 110"].tap()
    
    let app = XCUIApplication()
    app.pickerWheels["North American Maple 110"].tap()
    
    let northAmericanMaple110UnfBkPickerWheel = app.pickerWheels["North American Maple 110 UNF/BK"]
    northAmericanMaple110UnfBkPickerWheel.tap()
    northAmericanMaple110UnfBkPickerWheel.tap()
    
    let northAmericanMaple271PickerWheel = app.pickerWheels["North American Maple 271"]
    northAmericanMaple271PickerWheel.tap()
    northAmericanMaple271PickerWheel.tap()
    
    let proGradeAsh110PickerWheel = app.pickerWheels["Pro Grade Ash 110"]
    proGradeAsh110PickerWheel.tap()
    proGradeAsh110PickerWheel.tap()
    
    let proGradeAsh243PickerWheel = app.pickerWheels["Pro Grade Ash 243"]
    proGradeAsh243PickerWheel.tap()
    proGradeAsh243PickerWheel.tap()
    
    let proGradeAsh271PickerWheel = app.pickerWheels["Pro Grade Ash 271"]
    proGradeAsh271PickerWheel.tap()
    proGradeAsh271PickerWheel.tap()
    
    let proGradeAshAe16EthierPickerWheel = app.pickerWheels["Pro Grade Ash AE16 Ethier"]
    proGradeAshAe16EthierPickerWheel.tap()
    proGradeAshAe16EthierPickerWheel.tap()
    
    let proGradeMaple110PickerWheel = app.pickerWheels["Pro Grade Maple 110"]
    proGradeMaple110PickerWheel.tap()
    proGradeMaple110PickerWheel.tap()
    
    let proGradeMaple243PickerWheel = app.pickerWheels["Pro Grade Maple 243"]
    proGradeMaple243PickerWheel.tap()
    proGradeMaple243PickerWheel.tap()
    app.pickerWheels["Pro Grade Maple 271"].tap()
    
    let app = XCUIApplication()
    app.pickerWheels["Pro Grade Maple 271"].tap()
    
    let s1PickerWheel = app.pickerWheels["S1"]
    s1PickerWheel.tap()
    s1PickerWheel.tap()
    
    let s110PickerWheel = app.pickerWheels["S1 -10"]
    s110PickerWheel.tap()
    s110PickerWheel.tap()
    
    let s112PickerWheel = app.pickerWheels["S1 -12"]
    s112PickerWheel.tap()
    s112PickerWheel.tap()
    
    let s1BbcorPickerWheel = app.pickerWheels["S1 BBCor"]
    s1BbcorPickerWheel.tap()
    s1BbcorPickerWheel.tap()
    
    let s1BigBarrelPickerWheel = app.pickerWheels["S1 Big Barrel"]
    s1BigBarrelPickerWheel.tap()
    s1BigBarrelPickerWheel.tap()
    s1BigBarrelPickerWheel.tap()
    
    let s1HybridPickerWheel = app.pickerWheels["S1 Hybrid"]
    s1HybridPickerWheel.tap()
    s1HybridPickerWheel.tap()
    
    let s1MaplePickerWheel = app.pickerWheels["S1 Maple"]
    s1MaplePickerWheel.tap()
    s1MaplePickerWheel.tap()
    
    let s1MapleYouthPickerWheel = app.pickerWheels["S1 Maple Youth"]
    s1MapleYouthPickerWheel.tap()
    s1MapleYouthPickerWheel.tap()
    
    let s1YouthPickerWheel = app.pickerWheels["S1 Youth"]
    s1YouthPickerWheel.tap()
    s1YouthPickerWheel.tap()
    
    let s210258PickerWheel = app.pickerWheels["S2 -10 (2-5/8)"]
    s210258PickerWheel.tap()
    s210258PickerWheel.tap()
    
    let s213PickerWheel = app.pickerWheels["S2 -13"]
    s213PickerWheel.tap()
    s213PickerWheel.tap()
    
    let s2BbcorPickerWheel = app.pickerWheels["S2 BBCor"]
    s2BbcorPickerWheel.tap()
    s2BbcorPickerWheel.tap()
    
    let s2BigBarrelPickerWheel = app.pickerWheels["S2 Big Barrel"]
    s2BigBarrelPickerWheel.tap()
    s2BigBarrelPickerWheel.tap()
    app.pickerWheels["S2 Birch"].tap()
    
    let app = XCUIApplication()
    app.pickerWheels["S2 Birch"].tap()
    
    let s2SlowPitchPickerWheel = app.pickerWheels["S2 Slow Pitch"]
    s2SlowPitchPickerWheel.tap()
    s2SlowPitchPickerWheel.tap()
    
    let s2SrLeaguePickerWheel = app.pickerWheels["S2 Sr. League"]
    s2SrLeaguePickerWheel.tap()
    s2SrLeaguePickerWheel.tap()
    app.pickerWheels["S2 Youth"].tap()
    
    let s20010PickerWheel = app.pickerWheels["S200 -10"]
    s20010PickerWheel.tap()
    s20010PickerWheel.tap()
    app.pickerWheels["S200 -8"].tap()
    app.pickerWheels["S200 BBCor"].tap()
    app.pickerWheels["S200 Youth"].tap()
    app.pickerWheels["S200 Youth League"].tap()
    app.pickerWheels["S2Z"].tap()
    app.pickerWheels["S3 -10 (2-3/4)"].tap()
    app.pickerWheels["S3 -10 (2-5/8)"].tap()
    app.pickerWheels["S3 -13"].tap()
    
    let s3AshPickerWheel = app.pickerWheels["S3 Ash"]
    s3AshPickerWheel.tap()
    s3AshPickerWheel.tap()
    app.pickerWheels["S3 BBCor"].tap()
    
    let s3BigBarrelPickerWheel = app.pickerWheels["S3 Big Barrel"]
    s3BigBarrelPickerWheel.tap()
    s3BigBarrelPickerWheel.tap()
    s3BigBarrelPickerWheel.tap()
    app.pickerWheels["S300"].tap()
    
    let s3YouthPickerWheel = app.pickerWheels["S3 Youth"]
    s3YouthPickerWheel.tap()
    s3YouthPickerWheel.tap()
    
    let s30012PickerWheel = app.pickerWheels["S300 -12"]
    s30012PickerWheel.tap()
    s30012PickerWheel.tap()
    
    let s300SlowPitchPickerWheel = app.pickerWheels["S300 Slow Pitch"]
    s300SlowPitchPickerWheel.tap()
    s300SlowPitchPickerWheel.tap()
    
    let s300YouthPickerWheel = app.pickerWheels["S300 Youth"]
    s300YouthPickerWheel.tap()
    s300YouthPickerWheel.tap()
    
    let s300YouthLeaguePickerWheel = app.pickerWheels["S300 Youth League"]
    s300YouthLeaguePickerWheel.tap()
    s300YouthLeaguePickerWheel.tap()
    
    let s3500SlowPitchPickerWheel = app.pickerWheels["S3500 Slow Pitch"]
    s3500SlowPitchPickerWheel.tap()
    s3500SlowPitchPickerWheel.tap()
    
    let s3zPickerWheel = app.pickerWheels["S3Z"]
    s3zPickerWheel.tap()
    s3zPickerWheel.tap()
    
    let s4BbcorPickerWheel = app.pickerWheels["S4 BBCor"]
    s4BbcorPickerWheel.tap()
    s4BbcorPickerWheel.tap()
    
    let s4MaplePickerWheel = app.pickerWheels["S4 Maple"]
    s4MaplePickerWheel.tap()
    s4MaplePickerWheel.tap()
    
    let s40011PickerWheel = app.pickerWheels["S400 -11"]
    s40011PickerWheel.tap()
    s40011PickerWheel.tap()
    
    let s4008PickerWheel = app.pickerWheels["S400 -8"]
    s4008PickerWheel.tap()
    s4008PickerWheel.tap()
    
    let s400BbcorPickerWheel = app.pickerWheels["S400 BBCor"]
    s400BbcorPickerWheel.tap()
    s400BbcorPickerWheel.tap()
    
    let s400BigBarrelPickerWheel = app.pickerWheels["S400 Big Barrel"]
    s400BigBarrelPickerWheel.tap()
    s400BigBarrelPickerWheel.tap()
    
    let s400YouthPickerWheel = app.pickerWheels["S400 Youth"]
    s400YouthPickerWheel.tap()
    s400YouthPickerWheel.tap()
    
    let s400YouthLeaguePickerWheel = app.pickerWheels["S400 Youth League"]
    s400YouthLeaguePickerWheel.tap()
    s400YouthLeaguePickerWheel.tap()
    
    let s5010PickerWheel = app.pickerWheels["S50 -10"]
    s5010PickerWheel.tap()
    s5010PickerWheel.tap()
    
    let s50SlowPitchPickerWheel = app.pickerWheels["S50 Slow Pitch"]
    s50SlowPitchPickerWheel.tap()
    s50SlowPitchPickerWheel.tap()
    
    let s50YouthPickerWheel = app.pickerWheels["S50 Youth"]
    s50YouthPickerWheel.tap()
    s50YouthPickerWheel.tap()
    
    let s50YouthLeaguePickerWheel = app.pickerWheels["S50 Youth League"]
    s50YouthLeaguePickerWheel.tap()
    s50YouthLeaguePickerWheel.tap()
    
    let s500PickerWheel = app.pickerWheels["S500"]
    s500PickerWheel.tap()
    s500PickerWheel.tap()
    app.pickerWheels["S500 -12"].tap()
    XCUIApplication().pickerWheels["S500 -12"].tap()
    
}
