//
//  BaseballUIFWSetup.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/5/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest

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
public class ui_RegisterSensor{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
        self.uifw.fwapp.navigationBars["Register Sensor"].staticTexts["Register Sensor"].tap()
        self.uifw.fwapp.tables.staticTexts["Register Sensor"].tap()
        self.uifw.fwapp.tables.staticTexts["Position your sensor so that the serial number is in the camera frame."].tap()
        
    }
    
    func tap_Prev() -> ui_Welcome{
        self.uifw.fwapp.navigationBars["Register Sensor"].buttons["icBack"].tap()
        return ui_Welcome(fw: self.uifw)
    }
    func tap_help_buy_web(){
        self.uifw.fwapp.tables.staticTexts["Have no sensor? Learn more about Blast Baseball and purchase a sensor online at: https://blastmotion.com/products/baseball/"].tap()
        self.uifw.fwapp.navigationBars["Blast Baseball"].staticTexts["Blast Baseball"].tap()
    }
    func tap_help_buyweb_back(){
        self.uifw.fwapp.navigationBars["Blast Baseball"].buttons["icBack"].tap()
    }
    
    func set_serial_number(serial:String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element.tap()
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element.typeText(serial)
    }
    func tap_Done(){
        self.uifw.fwapp.toolbars.buttons["Done"].tap()

    }
    func handle_sensor_error_popup(){
        print("waiting 15Seconds for popup timeout")
        //sleep(15)
        self.uifw.fwapp.alerts["Sensor Registration"].staticTexts["Sensor Registration"].tap()
        self.uifw.fwapp.alerts["Sensor Registration"].staticTexts["There was an issue pairing your sensor. For assistance, please call Blast customer support at 1-855-632-5278. Let them know your sensor serial number is: 12345678"].tap()
        self.uifw.fwapp.alerts["Sensor Registration"].buttons["Close"].tap()
        //validate back to reg sensor page
        self.uifw.fwapp.navigationBars["Register Sensor"].staticTexts["Register Sensor"].tap()
    }
    
}

//        //register sensor
//        XCUIApplication().tables.staticTexts["Register Sensor"].tap()
//        //verify title
//
//        let app = XCUIApplication()
//        let registerSensorStaticText = app.navigationBars["Register Sensor"].staticTexts["Register Sensor"]
//        registerSensorStaticText.tap()
//        registerSensorStaticText.tap()
//
//        let tablesQuery = app.tables
//        tablesQuery.staticTexts["Register Sensor"].tap()
//        tablesQuery.staticTexts["Position your sensor so that the serial number is in the camera frame."].tap()
//        //sensor help and buy
//        tablesQuery.staticTexts["Have no sensor? Learn more about Blast Baseball and purchase a sensor online at: https://blastmotion.com/products/baseball/"].tap()
//
//        let blastBaseballNavigationBar = XCUIApplication().navigationBars["Blast Baseball"]
//        //verify title
//        blastBaseballNavigationBar.staticTexts["Blast Baseball"].tap()
//        blastBaseballNavigationBar.buttons["icBack"].tap()
//        //serial number
//
//        let app = XCUIApplication()
//        let textField = app.tables.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element
//        textField.tap()
//        textField.typeText("12345678")
//        app.toolbars.buttons["Done"].tap()
//        //popup sensor registration pairing issue
//
//        let app = XCUIApplication()
//        let sensorRegistrationAlert = app.alerts["Sensor Registration"]
//        sensorRegistrationAlert.staticTexts["Sensor Registration"].tap()
//        sensorRegistrationAlert.staticTexts["There was an issue pairing your sensor. For assistance, please call Blast customer support at 1-855-632-5278. Let them know your sensor serial number is: 12345678"].tap()
//        sensorRegistrationAlert.buttons["Close"].tap()
//
//        let registerSensorNavigationBar = app.navigationBars["Register Sensor"]
//        //validate sensor title
//        registerSensorNavigationBar.staticTexts["Register Sensor"].tap()
//        //back to welcome
//        registerSensorNavigationBar.buttons["icBack"].tap()
//        //skip at welcome
//        XCUIApplication().navigationBars["Create Account"].buttons["Skip"].tap()
//        //dasgboard welcome






/*#####################################
 user
 Basic Details user screen
 #######################################*/
//public class ui_BasicDetails{
//    var icbackbutton: XCUIElement
//    let uifw: UIFramework
//    init(fw: UIFramework){
//        self.uifw = fw
//        print(type(of: self))
//        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
//    }
//    
//    func tap_Prev() -> ui_Player{
//        self.icbackbutton.tap()
//        return ui_Player(fw: self.uifw)
//    }
//}

/*####################################
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
        self.uifw.fwapp.navigationBars["Create Account"].staticTexts["Create Account"].tap()
        print(type(of: self.uifw.fwapp.tables.staticTexts))
        print("test welcome")
        let welcomemsg="Welcome "+self.uifw.account_name
        //"Welcome blastmotionqaautomation1499294538"
        print(welcomemsg)
        //self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.tap()
        self.uifw.fwapp.tables.staticTexts[welcomemsg].tap()
        self.uifw.fwapp.tables.staticTexts["To get started, please complete your account details. Have your sensor ready to register and connect it. Finish your setup by adding a bat."].tap()

        //self.uifw.fwapp.staticTexts["Basic Details*"].tap()
//        let app = XCUIApplication()
//        let tablesQuery = app.tables
//        let createAccountButton = tablesQuery.buttons["Create Account"]
//        createAccountButton.tap()
//        tablesQuery.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.tap()
//        tablesQuery.textFields.containing(.button, identifier:"Clear text").element.typeText(".com")
//        app.toolbars.buttons["Done"].tap()
//        createAccountButton.tap()
//        tablesQuery.staticTexts["Welcome automation170700"].tap()
//        tablesQuery.staticTexts["To get started, please complete your account details. Have your sensor ready to register and connect it. Finish your setup by adding a bat."].tap()
        
        
        
    }
    
    func tap_Skip() -> ui_Main{
        self.uifw.fwapp.navigationBars["Create Account"].buttons["Skip"].tap()
        return ui_Main(fw:self.uifw)
    }
    
    func tap_Prev() -> ui_Welcome{
        self.icbackbutton.tap()
        return ui_Welcome(fw: self.uifw)
    }
    
    func tap_Details() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
    func tap_Basic_Details() -> ui_BasicDetails{
        self.uifw.fwapp.tables.staticTexts["Basic Details*"].tap()
        return ui_BasicDetails(fw: self.uifw)
    }
    func tap_Register_Sensor() -> ui_RegisterSensor{
        self.uifw.fwapp.tables.staticTexts["Register Sensor"].tap()
        return ui_RegisterSensor(fw: self.uifw)
    }
    func tap_Add_Bat() -> ui_AddBat{
        self.uifw.fwapp.tables.staticTexts["Add Bat"].tap()
        //app.tables.staticTexts["Add Bat"].tap()
        return ui_AddBat(fw: self.uifw)
    }
}

public class ui_BasicDetails{
    var icbackbutton: XCUIElement
    let basicDetailsNavigationBar: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        self.uifw.printinfo(msg: "", in_out: 1,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
        self.basicDetailsNavigationBar = self.uifw.fwapp.navigationBars["Basic Details"]
        self.basicDetailsNavigationBar.staticTexts["Basic Details"].tap()
        self.uifw.printinfo(msg: "", in_out: 2,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        
        return ui_Player(fw: self.uifw)
    }
    
    func Save() -> ui_Welcome{
        self.uifw.printinfo(msg: "", in_out: 1,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        //let basicDetailsNavigationBar = self.uifw.fwapp.navigationBars["Basic Details"]
        //basicDetailsNavigationBar.staticTexts["Basic Details"].tap()
        self.basicDetailsNavigationBar.buttons["Save"].tap()
        //self.uifw.fwapp.navigationBars["Inbox"].buttons["Save"].tap()
        //let inboxNavigationBar = XCUIApplication().navigationBars["Inbox"]
        //inboxNavigationBar.buttons["Save"].tap()
        //inboxStaticText.tap()
        //inboxNavigationBar = XCUIApplication().navigationBars["Inbox"].buttons["Save"].tap()
        //
        //    //skip
        //
        //let inboxNavigationBar = XCUIApplication().navigationBars["Inbox"]
        //    let inboxStaticText = inboxNavigationBar.staticTexts["Inbox"]

        //    inboxStaticText.tap()
        //    inboxNavigationBar.buttons["icClose"].tap()
        self.uifw.printinfo(msg: "", in_out: 2,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")

        return ui_Welcome(fw:self.uifw)
    }
    //append text
    func FirstName(txt: String){
        self.uifw.printinfo(msg: "", in_out: 1)
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element.tap()
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element.typeText(txt)
        self.uifw.account_name+=txt
        self.uifw.printinfo(msg: "", in_out: 2)
    }
    
    func LastName(txt: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.tap()
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.typeText(txt)
    }
    
    func BirthDate(year:String,month:String,date: String){
        self.uifw.printinfo(msg: "", in_out: 1)
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.tap()
        sleep(1)
        self.uifw.printinfo(msg: "year")
        self.uifw.fwapp.pickerWheels.element(boundBy: 2).adjust(toPickerWheelValue: year)
        self.uifw.printinfo(msg: "month")
        self.uifw.fwapp.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: month)
        self.uifw.printinfo(msg: "day")
        self.uifw.fwapp.pickerWheels.element(boundBy: 1).adjust(toPickerWheelValue: date)
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
        self.uifw.printinfo(msg: "", in_out: 2)
    }
    
    func Zip(zip: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element.tap()
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element.typeText(zip)
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func Gender(gender: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 7).children(matching: .textField).element.tap()
        sleep(1)
        self.uifw.fwapp.pickerWheels.element.adjust(toPickerWheelValue: gender)
        self.uifw.fwapp.pickerWheels[gender].tap()
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func Bats(bat: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 8).children(matching: .textField).element.tap()
        sleep(1)
        self.uifw.fwapp.pickerWheels.element.adjust(toPickerWheelValue: bat)
        self.uifw.fwapp.pickerWheels[bat].tap()
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func Height(ft: String,inches:String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 9).children(matching: .textField).element.tap()
        sleep(1)
        self.uifw.fwapp.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: ft)
        self.uifw.fwapp.pickerWheels.element(boundBy: 1).adjust(toPickerWheelValue: inches)
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func Weight(weight: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 10).children(matching: .textField).element.tap()
        sleep(1)
        self.uifw.fwapp.pickerWheels.element.adjust(toPickerWheelValue: weight)
        self.uifw.fwapp.pickerWheels[weight].tap()
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
}


/*#####################################
 user
 add bat
 #######################################*/
public class ui_AddBat{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
        sleep(1)
        self.uifw.fwapp.navigationBars["Add New Bat"].staticTexts["Add New Bat"].tap()
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
    
    func tap_AddNewBat() -> ui_Add_Equipment{
        self.uifw.fwapp.tables.buttons["Add New Bat"].tap()
        return ui_Add_Equipment(fw:self.uifw)
    }
    
    func Brand(brand:String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 1).children(matching: .textField).element.tap()
        sleep(1)
        self.uifw.fwapp.pickerWheels.element.adjust(toPickerWheelValue: brand)
        self.uifw.fwapp.pickerWheels[brand].tap()
        self.uifw.fwapp.toolbars.buttons["Done"].tap()

    }
    
    func Model(model:String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element.tap()
        sleep(1)
        self.uifw.fwapp.pickerWheels.element.adjust(toPickerWheelValue: model)
        self.uifw.fwapp.pickerWheels[model].tap()
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    /*appends to default
     
     */
    func Nickname(nick:String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element.tap()
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element.typeText(nick)
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func Length(length:String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.tap()
        sleep(1)
        self.uifw.fwapp.pickerWheels.element.adjust(toPickerWheelValue: length)
        self.uifw.fwapp.pickerWheels[length].tap()
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func Weight(weight:String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.tap()
        sleep(1)
        self.uifw.fwapp.pickerWheels.element.adjust(toPickerWheelValue: weight)
        self.uifw.fwapp.pickerWheels[weight].tap()
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
}
///*#####################################
// user
// add bat
// #######################################*/
//public class ui_AddBat{
//    var icbackbutton: XCUIElement
//    let uifw: UIFramework
//    init(fw: UIFramework){
//        self.uifw = fw
//        print(type(of: self))
//        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
//        sleep(1)
//        self.uifw.fwapp.navigationBars["Add New Bat"].staticTexts["Add New Bat"].tap()
//    }
//    
//    func tap_Prev() -> ui_Player{
//        self.icbackbutton.tap()
//        return ui_Player(fw: self.uifw)
//    }
//}

/*#####################################
 user
 Equipment user screen
 #######################################*/
public class ui_Add_Equipment{
    var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        self.uifw = fw
        print(type(of: self))
        self.icbackbutton=self.uifw.fwapp.navigationBars["Create Account"].buttons["icBack"]
        sleep(1)
        self.uifw.fwapp.navigationBars["Add Equipment"].staticTexts["Add Equipment"].tap()
        self.uifw.fwapp.tables.staticTexts["Install on Bat"].tap()
        self.uifw.fwapp.tables.staticTexts[" After you setup your first bat it's important to install on that bat correctly"].tap()
    }
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
    }
    
    func tap_Done() -> ui_Welcome{
        self.uifw.fwapp.navigationBars["Add Equipment"].buttons["Done"].tap()
        return ui_Welcome(fw:self.uifw)
    }
    
    func tap_VolumeOn(){
        self.uifw.fwapp.tables.buttons["icVolumeOff"].tap()
    }
    
    func tap_VolumeOff(){
        self.uifw.fwapp.tables.buttons["icVolumeOn"].tap()
    }
    
}

//    func testaddbat(){
//        XCUIDevice.shared().orientation = .portrait
//
//
//        //verify title
//        XCUIDevice.shared().orientation = .portrait
//        XCUIApplication().navigationBars["Create Account"].staticTexts["Create Account"].tap()
//
//        let app = XCUIApplication()
//        //select add bat from welcome
//        app.tables.staticTexts["Add Bat"].tap()
//        //verify title
//        app.navigationBars["Add New Bat"].staticTexts["Add New Bat"].tap()
//        //select brand
//
//        let app = XCUIApplication()
//        app.tables.children(matching: .cell).element(boundBy: 1).children(matching: .textField).element.tap()
//        app.pickers.children(matching: .pickerWheel).element.tap()
//        app.toolbars.buttons["Done"].tap()
//
//        //model
//
//        let app = XCUIApplication()
//        app.tables.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element.tap()
//        app.pickers.children(matching: .pickerWheel).element.tap()
//        app.toolbars.buttons["Done"].tap()
//
//        //nickname
//
//        let app = XCUIApplication()
//        let textField = app.tables.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element
//        textField.tap()
//        textField.typeText("zzz")
//        app.toolbars.buttons["Done"].tap()
//
//        //length
//
//        let app = XCUIApplication()
//        app.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.tap()
//        app.pickerWheels["33 in"].tap()
//        app.toolbars.buttons["Done"].tap()
//
//
//        //weight
//
//        let app = XCUIApplication()
//        app.tables.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.tap()
//        app.pickerWheels["30 oz"].tap()
//        app.toolbars.buttons["Done"].tap()
//        //add new bat
//        XCUIApplication().tables.buttons["Add New Bat"].tap()
//        //verify add equiptment
//
//        let app = XCUIApplication()
//        let addEquipmentNavigationBar = app.navigationBars["Add Equipment"]
//        addEquipmentNavigationBar.staticTexts["Add Equipment"].tap()
//        //volume on off
//        let tablesQuery = app.tables
//        tablesQuery.buttons["icVolumeOff"].tap()
//        tablesQuery.buttons["icVolumeOn"].tap()
//        //verify text
//        let installOnBatStaticText = tablesQuery.staticTexts["Install on Bat"]
//        installOnBatStaticText.tap()
//        tablesQuery.staticTexts[" After you setup your first bat it's important to install on that bat correctly"].tap()
//        //done
//        //back to welcome
//        app.navigationBars["Add Equipment"].buttons["Done"].tap()

//        //register sensor
//        XCUIApplication().tables.staticTexts["Register Sensor"].tap()
//        //verify title
//
//        let app = XCUIApplication()
//        let registerSensorStaticText = app.navigationBars["Register Sensor"].staticTexts["Register Sensor"]
//        registerSensorStaticText.tap()
//        registerSensorStaticText.tap()
//
//        let tablesQuery = app.tables
//        tablesQuery.staticTexts["Register Sensor"].tap()
//        tablesQuery.staticTexts["Position your sensor so that the serial number is in the camera frame."].tap()
//        //sensor help and buy
//        tablesQuery.staticTexts["Have no sensor? Learn more about Blast Baseball and purchase a sensor online at: https://blastmotion.com/products/baseball/"].tap()
//
//        let blastBaseballNavigationBar = XCUIApplication().navigationBars["Blast Baseball"]
//        //verify title
//        blastBaseballNavigationBar.staticTexts["Blast Baseball"].tap()
//        blastBaseballNavigationBar.buttons["icBack"].tap()
//        //serial number
//
//        let app = XCUIApplication()
//        let textField = app.tables.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element
//        textField.tap()
//        textField.typeText("12345678")
//        app.toolbars.buttons["Done"].tap()
//        //popup sensor registration pairing issue
//
//        let app = XCUIApplication()
//        let sensorRegistrationAlert = app.alerts["Sensor Registration"]
//        sensorRegistrationAlert.staticTexts["Sensor Registration"].tap()
//        sensorRegistrationAlert.staticTexts["There was an issue pairing your sensor. For assistance, please call Blast customer support at 1-855-632-5278. Let them know your sensor serial number is: 12345678"].tap()
//        sensorRegistrationAlert.buttons["Close"].tap()
//
//        let registerSensorNavigationBar = app.navigationBars["Register Sensor"]
//        //validate sensor title
//        registerSensorNavigationBar.staticTexts["Register Sensor"].tap()
//        //back to welcome
//        registerSensorNavigationBar.buttons["icBack"].tap()
//        //skip
//        XCUIApplication().navigationBars["Create Account"].buttons["Skip"].tap()
//        //dasgboard welcome
//
//        let app = XCUIApplication()
//        app.staticTexts["Welcome to Blast Baseball!"].tap()
//        app.staticTexts["The Blast Baseball app helps to capture your swings and video highlights, provides drills for improving and delivers insights on your progress. Start getting better today. You currently do not have any swings stored in your device, lets get started."].tap()
//        app.navigationBars["NGABaseball.ProgressView"].staticTexts["Progress"].tap()
//        //goto new user dashboard
//        app.buttons["Get Started"].tap()
//        //dashboard
//
//        let app = app2
//        let dashboardNavigationBar = app.navigationBars["Dashboard"]
//        let dashboardStaticText = dashboardNavigationBar.staticTexts["Dashboard"]
//        dashboardStaticText.tap()
//
//        let swingSetupNavigationBar = app.navigationBars["Swing Setup"]
//        let iccloseButton = swingSetupNavigationBar.buttons["icClose"]
//        iccloseButton.tap()
//        dashboardStaticText.tap()
//        swingSetupNavigationBar.staticTexts["Swing Setup"].tap()
//
//        let equipmentButton = app.buttons["Equipment"]
//        equipmentButton.tap()
//
//        let app2 = app
//        app2.buttons["Sensors"].tap()
//        equipmentButton.tap()
//
//        let tablesQuery = app2.tables
//        let staticText = tablesQuery.staticTexts["33.5 in / 29.5 oz"]
//        staticText.tap()
//        iccloseButton.tap()
//
//        let collectionViewsQuery = app2.collectionViews
//        collectionViewsQuery.staticTexts["Bat Speed"].tap()
//        collectionViewsQuery.staticTexts["Peak Hand Speed"].tap()
//        collectionViewsQuery.staticTexts["Attack Angle"].tap()
//        collectionViewsQuery.staticTexts["Time to Contact"].tap()
//        collectionViewsQuery.staticTexts["Blast Factor"].tap()
//
//        let collectionViewsQuery2 = app.collectionViews
//        collectionViewsQuery2.children(matching: .cell).element(boundBy: 0).staticTexts["MPH"].tap()
//        collectionViewsQuery2.children(matching: .cell).element(boundBy: 1).staticTexts["MPH"].tap()
//        collectionViewsQuery.staticTexts["Degrees"].tap()
//        collectionViewsQuery.staticTexts["Sec"].tap()
//        collectionViewsQuery2.children(matching: .cell).element(boundBy: 4).children(matching: .other).element.children(matching: .other).element(boundBy: 1).tap()
//        collectionViewsQuery.staticTexts["Score"].tap()
//        app.staticTexts["Start Session"].tap()
//        app.navigationBars["NGABaseball.SessionFormView"].staticTexts["Session Summary"].tap()
//
//        let textField = app.tables.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element
//        textField.tap()
//        textField.typeText("mmy nootes")
//        app.toolbars.buttons["Done"].tap()
//        tablesQuery.buttons["Start Session"].tap()
//        dashboardNavigationBar.staticTexts["No Active Bat"].tap()
//        tablesQuery.buttons["DF"].tap()
//        staticText.tap()
//
//        let app = XCUIApplication()
//        app.staticTexts["00:01:27"].tap()
//        app.tables.buttons["Stop Session"].tap()
//        app.navigationBars["NGABaseball.SessionSummaryView"].buttons["icClose"].tap()
//        app.tabBars.children(matching: .button).element(boundBy: 1).tap()
//
//
//    }




//func testSetup_Welcome(){
//    XCUIDevice.shared().orientation = .portrait
//    let fw=UIFramework(app: XCUIApplication())
//    
//    let tablesQuery = XCUIApplication().tables
//    fw.fwapp.tables.staticTexts["Welcome BlastAutomation170705"].tap()
//    fw.fwapp.tables.staticTexts["To get started, please complete your account details. Have your sensor ready to register and connect it. Finish your setup by adding a bat."].tap()
//    //select Basic Details*
//    
//    
//    fw.fwapp.tables.staticTexts["Basic Details*"].tap()
//    //Basic Details*
//    fw.fwapp.navigationBars["Basic Details"].staticTexts["Basic Details"].tap()
//    
//    fw.fwapp.tables.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element.tap()
//    
//    
//    fw.fwapp.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element
//    textField2.tap()
//    textField.tap()
//    textField.typeText("z")
//    textField2.tap()
//    textField2.typeText("Llastt")
//    tablesQuery.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.tap()
//    
//    let datePickersQuery = app.datePickers
//    datePickersQuery.pickerWheels["July"].tap()
//    datePickersQuery.pickerWheels["5"].tap()
//    datePickersQuery.pickerWheels["2017"].tap()
//    
//    let doneButton = app.toolbars.buttons["Done"]
//    doneButton.tap()
//    
//    let textField3 = tablesQuery.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element
//    textField3.tap()
//    textField3.typeText("921299")
//    doneButton.tap()
//    tablesQuery.children(matching: .cell).element(boundBy: 7).children(matching: .textField).element.tap()
//    
//    let pickerWheel = app.pickers.children(matching: .pickerWheel).element
//    pickerWheel.tap()
//    app.pickerWheels["Female"].tap()
//    doneButton.tap()
//    tablesQuery.children(matching: .cell).element(boundBy: 8).children(matching: .textField).element.tap()
//    pickerWheel.tap()
//    app.pickerWheels["Left"].tap()
//    doneButton.tap()
//    tablesQuery.children(matching: .cell).element(boundBy: 9).children(matching: .textField).element.tap()
//    app.pickerWheels["5 ft"].tap()
//    app.pickerWheels["4 in"].tap()
//    doneButton.tap()
//    tablesQuery.children(matching: .cell).element(boundBy: 10).children(matching: .textField).element.tap()
//    app.pickerWheels["130 lbs"].tap()
//    doneButton.tap()
//    
//    
//    basicDetailsNavigationBar.buttons["Save"].tap()
//    
//    //skip
//    
//    let inboxNavigationBar = XCUIApplication().navigationBars["Inbox"]
//    let inboxStaticText = inboxNavigationBar.staticTexts["Inbox"]
//    inboxStaticText.tap()
//    inboxStaticText.tap()
//    inboxStaticText.tap()
//    inboxStaticText.tap()
//    inboxNavigationBar.buttons["icClose"].tap()
//    
//}
















//
//public class ui_AddBat{
//    //============
//}








//XCUIDevice.shared().orientation = .portrait
//XCUIDevice.shared().orientation = .portrait
//XCUIDevice.shared().orientation = .portrait
//
//let tablesQuery = XCUIApplication().tables
//tablesQuery.staticTexts["Welcome fischertech01"].tap()
//tablesQuery.staticTexts["To get started, please complete your account details. Have your sensor ready to register and connect it. Finish your setup by adding a bat."].tap()
//
//
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.staticTexts["Basic Details*"].tap()
//app.navigationBars["Basic Details"].staticTexts["Basic Details"].tap()
//
//let textField = tablesQuery.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element
//textField.tap()
//textField.tap()
////lastname
//
//let app = XCUIApplication()
//let textField = app.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element
//textField.tap()
//textField.typeText("My Llast Name")
//app.toolbars.buttons["Done"].tap()
//// birthdate
//
//let app = XCUIApplication()
//let textField = app.tables.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element
//textField.tap()
//textField.tap()
//
//let datePickersQuery = app.datePickers
//datePickersQuery.pickerWheels["July"].tap()
//datePickersQuery.pickerWheels["4"].tap()
//datePickersQuery.pickerWheels["2017"].tap()
//app.toolbars.buttons["Done"].tap()
//
////zip
//
//let app = XCUIApplication()
//let textField = app.tables.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element
//textField.tap()
//textField.typeText("92129")
//app.toolbars.buttons["Done"].tap()
//
////gender
//
//let app = app2
//let textField = app.tables.children(matching: .cell).element(boundBy: 7).children(matching: .textField).element
//textField.tap()
//app.pickers.children(matching: .pickerWheel).element.press(forDuration: 1.3);
//
//let doneButton = app.toolbars.buttons["Done"]
//doneButton.tap()
//textField.tap()
//
//let app2 = app
//app2.pickerWheels["Female"].press(forDuration: 0.7);
//app2.pickerWheels["Male"].tap()
//doneButton.tap()
//
////
//
//let app = XCUIApplication()
//app.tables.children(matching: .cell).element(boundBy: 8).children(matching: .textField).element.tap()
//app.pickers.children(matching: .pickerWheel).element.tap()
//
//let rightPickerWheel = app.pickerWheels["Right"]
//rightPickerWheel.tap()
//rightPickerWheel.tap()
//app.pickerWheels["Left"].tap()
//app.toolbars.buttons["Done"].tap()
//
////height
//
//let app = app2
//app.tables.children(matching: .cell).element(boundBy: 9).children(matching: .textField).element.tap()
//
//let app2 = app
//app2.pickerWheels["5 ft"].tap()
//app2.pickerWheels["4 in"].tap()
//app.toolbars.buttons["Done"].tap()
//
////weight
//
//let app = app2
//app.tables.children(matching: .cell).element(boundBy: 10).children(matching: .textField).element.tap()
//
//let app2 = app
//app2.pickerWheels["130 lbs"].tap()
//app2.pickerWheels["128 lbs"].tap()
//app.toolbars.buttons["Done"].tap()
//
////save
//XCUIApplication().navigationBars["Basic Details"].buttons["Save"].tap()
//
////welcome
//
////register sensor from welcome
//XCUIApplication().tables.staticTexts["Register Sensor"].tap()
////register sensor
//
//let app = XCUIApplication()
//app.navigationBars["Register Sensor"].staticTexts["Register Sensor"].tap()
//app.tables.buttons["Can't find a code?"].tap()
////detect sensor
//app.staticTexts["Wakeup Your Sensor"].tap()
//app.staticTexts["Face the Blast logo towards the ground for 2 seconds, face the Blast logo towards the sky for 2 seconds, and repeat until it is activated."].tap()
//app.buttons["icSensor"].tap()
////wait 30 seconds for ppup
//let sensorRegistrationAlert = app.alerts["Sensor Registration"]
//sensorRegistrationAlert.staticTexts["Sensor Registration"].tap()
//sensorRegistrationAlert.buttons["OK"].tap()
//app.navigationBars["NGABaseball.WakeSensorView"].buttons["icClose"].tap()
////return to sensor page
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.staticTexts["Register Sensor"].tap()
//tablesQuery.staticTexts["Position your sensor so that the serial number is in the camera frame."].tap()
//
//let textField = tablesQuery.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element
//textField.tap()
//textField.typeText("123456789")
//app.toolbars.buttons["Done"].tap()
//
//let sensorRegistrationAlert = app.alerts["Sensor Registration"]
//sensorRegistrationAlert.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 0).children(matching: .other).element.tap()
////popup not found sensor
//sensorRegistrationAlert.staticTexts["There was an issue pairing your sensor. For assistance, please call Blast customer support at 1-855-632-5278. Let them know your sensor serial number is: 123456789"].tap()
//sensorRegistrationAlert.buttons["Close"].tap()
////return to sensor page
//
//let app = XCUIApplication()
//let haveNoSensorLearnMoreAboutBlastBaseballAndPurchaseASensorOnlineAtHttpsBlastmotionComProductsBaseballStaticText = app.tables.staticTexts["Have no sensor? Learn more about Blast Baseball and purchase a sensor online at: https://blastmotion.com/products/baseball/"]
//haveNoSensorLearnMoreAboutBlastBaseballAndPurchaseASensorOnlineAtHttpsBlastmotionComProductsBaseballStaticText.tap()
////app web info help to buy sensor
//let blastBaseballNavigationBar = app.navigationBars["Blast Baseball"]
//blastBaseballNavigationBar.staticTexts["Blast Baseball"].tap()
//
//XCUIApplication().navigationBars["Blast Baseball"].buttons["icBack"].tap()
////return to sensor page
//XCUIApplication().navigationBars["Register Sensor"].staticTexts["Register Sensor"].tap()
////return welcom page
//XCUIApplication().navigationBars["Register Sensor"].buttons["icBack"].tap()
//
////return to welcome
//XCUIApplication().tables.staticTexts["Add Bat"].tap()
////add new bat
//
//let app = app2
//app.tables.children(matching: .cell).element(boundBy: 1).children(matching: .textField).element.tap()
//app.pickers.children(matching: .pickerWheel).element.tap()
