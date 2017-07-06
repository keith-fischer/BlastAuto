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
    
    func tap_Prev() -> ui_Player{
        self.icbackbutton.tap()
        return ui_Player(fw: self.uifw)
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
        self.icbackbutton.tap()
        return ui_RegisterSensor(fw: self.uifw)
    }
    func tap_Add_Bat() -> ui_AddBat{
        self.icbackbutton.tap()
        return ui_AddBat(fw: self.uifw)
    }
}

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
    
    func Save() -> ui_Welcome{
        self.uifw.fwapp.navigationBars["Inbox"].buttons["Save"].tap()
        return ui_Welcome(fw:self.uifw)
        //    inboxNavigationBar = XCUIApplication().navigationBars["Inbox"].buttons["Save"].tap()
        //
        //    //skip
        //
        //let inboxNavigationBar = XCUIApplication().navigationBars["Inbox"]
        //    let inboxStaticText = inboxNavigationBar.staticTexts["Inbox"]
        //    inboxStaticText.tap()
        //    inboxStaticText.tap()
        //    inboxStaticText.tap()
        //    inboxStaticText.tap()
        //    inboxNavigationBar.buttons["icClose"].tap()
    }
    
    func FirstName(txt: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element.tap()
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element.typeText(txt)
    }
    
    func LastName(txt: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.tap()
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.typeText(txt)
    }
    
    func BirthDate(year:String,month:String,date: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.tap()
        //let datePickersQuery = self.uifw.fwapp.datePickers
        //datePickersQuery.tap()
        sleep(1)
        //datePickersQuery.pickerWheels[month].tap()
        //datePickersQuery.pickerWheels[date].tap()
        //datePickersQuery.pickerWheels[year].tap()
        
        self.uifw.fwapp.pickerWheels.element(boundBy: 2).adjust(toPickerWheelValue: year)
        //self.uifw.fwapp.pickerWheels.element(boundBy: 0).tap()
        self.uifw.fwapp.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: month)
        //self.uifw.fwapp.pickerWheels.element(boundBy: 1).tap()
        self.uifw.fwapp.pickerWheels.element(boundBy: 1).adjust(toPickerWheelValue: date)
        //self.uifw.fwapp.pickerWheels.element(boundBy: 2).tap()

        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func Zip(zip: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element.tap()
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element.typeText(zip)
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func Gender(gender: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 7).children(matching: .textField).element.tap()
        //let pickerWheel = self.uifw.fwapp.pickers.children(matching: .pickerWheel).element
        //pickerWheel.tap()
        sleep(1)
        self.uifw.fwapp.pickerWheels.element.adjust(toPickerWheelValue: gender)
        self.uifw.fwapp.pickerWheels[gender].tap()
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func Bats(bat: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 8).children(matching: .textField).element.tap()
        //let pickerWheel = self.uifw.fwapp.pickers.children(matching: .pickerWheel).element
        //pickerWheel.tap()
        sleep(1)
        self.uifw.fwapp.pickerWheels.element.adjust(toPickerWheelValue: bat)
        self.uifw.fwapp.pickerWheels[bat].tap()
        self.uifw.fwapp.toolbars.buttons["Done"].tap()

    }
    
    func Height(ft: String,inches:String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 9).children(matching: .textField).element.tap()
        //let pickerWheel = self.uifw.fwapp.pickers.children(matching: .pickerWheel).element
        //pickerWheel.tap()
        sleep(1)
        self.uifw.fwapp.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: ft)
        //self.uifw.fwapp.pickerWheels.element(boundBy: 0).tap()
        self.uifw.fwapp.pickerWheels.element(boundBy: 1).adjust(toPickerWheelValue: inches)
       //self.uifw.fwapp.pickerWheels.element(boundBy: 1).tap()
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
    }
    
    func Weight(weight: String){
        self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: 10).children(matching: .textField).element.tap()
        //let pickerWheel = self.uifw.fwapp.pickers.children(matching: .pickerWheel).element
        //pickerWheel.tap()
        sleep(1)
        //pickerWheel.pickerWheels["130 lbs"].tap()
        //self.uifw.fwapp.pickerWheels[weight].tap()
        self.uifw.fwapp.pickerWheels.element.adjust(toPickerWheelValue: weight)
        
        //sleep(5)
        
        //app.pickerWheels.element.adjustToPickerWheelValue("iPhone 3GS")
        self.uifw.fwapp.pickerWheels[weight].tap()
        self.uifw.fwapp.toolbars.buttons["Done"].tap()
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
