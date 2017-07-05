//
//  NGABaseballUITests.swift
//  NGABaseballUITests
//
//  Created by New Computer on 6/21/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import XCTest


//class Baseball_UI{
//    var app: XCUIElement
//    init(app: XCUIElement){
//        self.app = app
//    }
//    func Title(){
//        print(self.app.title)
//    }
//}

class NGABaseballUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStartup(){
        print("Start testExample ============")
        XCUIDevice.shared().orientation = .faceUp
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        var start=fw.uiStartup()
        start.test_startup_titles()
        let login=start.tap_Login()
        start=login.tap_Prev()
    }
    
    func testCreateAccountFails() {
        print("Start testExample ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        let start=fw.uiStartup()
        //fw.uiMain()
        let newact=start.tap_Create_New_Account()
        // New account, player or coach screen ---------------------------------
        //start=newact.tap_Prev()
        // startup screen ------------------------------------------------------
        //newact=start.tap_Create_New_Account()
        // New account, player or coach screen ---------------------------------
        var newplayer = newact.tap_Player()
        //newact.tap_Coach()
        // New account, player--------------------------------------------------
        var acctForm=newplayer.tap_Youth()
        acctForm.inputAccountFormFail(FullName: "Kitty Cat",
                                                Email: acctForm.uifw.account_email,
                                                ConfirmEmail: "Z"+acctForm.uifw.account_email,
                                                Password: "automation",
                                                FailMsg: ui_Player_CreateAccount.create_account_fail.email_match.rawValue)
        
        acctForm.inputAccountFormFail(FullName: "Kitty Cat",
                                      Email: acctForm.uifw.account_email,
                                      ConfirmEmail: acctForm.uifw.account_email,
                                      Password: "a",
                                      FailMsg: ui_Player_CreateAccount.create_account_fail.Invalid_password.rawValue)
        
        acctForm.inputAccountFormFail(FullName: "",
                                      Email: acctForm.uifw.account_email,
                                      ConfirmEmail: acctForm.uifw.account_email,
                                      Password: "a",
                                      FailMsg: ui_Player_CreateAccount.create_account_fail.missing_field.rawValue)
        

        
        //acctForm.tap_Create_Account_Fail(fail: ui_Player_CreateAccount.create_account_fail.email_match.rawValue)
        // New Account UI Form -------------------------------------------------
        newplayer=acctForm.tap_Prev()
        // New account, player--------------------------------------------------
        acctForm=newplayer.tap_High_School_Junior_Varsity()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_High_School_Varsity()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_Middle_School()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_Minor_League()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_Professional()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_College()
        newplayer=acctForm.tap_Prev()
        acctForm=newplayer.tap_Other()
        newplayer=acctForm.tap_Prev()

    }
    
    func testCreateAccount(){
        print("testCreateAccount ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        var start=fw.uiStartup()
        let newact=start.tap_Create_New_Account()
        // New account, player or coach screen ---------------------------------
        //start=newact.tap_Prev()
        // startup screen ------------------------------------------------------
        //newact=start.tap_Create_New_Account()
        // New account, player or coach screen ---------------------------------
        var newplayer = newact.tap_Player()
        // New account, player--------------------------------------------------
        let acctForm=newplayer.tap_Youth()
        var logininfo="blastautomation170704"
        
        let setup=acctForm.inputAccountForm(FullName:logininfo,// acctForm.uifw.account_name,
                                            Email:logininfo+"@gmail.com",// acctForm.uifw.account_email,
                                            ConfirmEmail:logininfo+"@gmail.com",// acctForm.uifw.account_email,
                                            Password: "@utomaT1on")
        setup
        //newplayer=mmain.tap_Prev()
        //start=newact.tap_Prev()
        
        //ui_welcome
        //verify welcom user name
        //verify user setup text instructions
        //tap to ui_BasicDetails
        //
    }
    
    func testLogin(){
        XCUIDevice.shared().orientation = .portrait
        let fw=UIFramework(app: XCUIApplication())
        let start=fw.uiStartup()
        let semail="fischertech00@gmail.com"
        let spw="Qwerty1!"
        let login=start.tap_Login()
        login.type_Useremail(email: semail)
        login.type_UserPassword(pw: spw)
        //login.type_Useremail(email: "blastautomation170704@gmail.com")
        //login.type_UserPassword(pw: "@utomaT1on")
        let main=login.tap_Login()
        
//        let app=fw.fwapp
//        //app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element.tap()
//        app.staticTexts["Already have an account? Sign in here."].tap()
//        app.staticTexts["THE COMPLETE HITTING SOLUTION"].tap()
//        //input email
//        app.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.tap()
//        app.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.typeText("blastautomation170704@gmail.com")
//
//        //app.tables.textFields.containing(.button, identifier:"Clear text").element.typeText("blastautomation170704@gmail.com")
//        app.toolbars.buttons["Done"].tap()
//        
//
//        //login
//        app.tables.buttons["Log In"].tap()
        
        
        
        XCUIDevice.shared().orientation = .portrait
        XCUIDevice.shared().orientation = .portrait
        XCUIDevice.shared().orientation = .portrait
        
        let tablesQuery = XCUIApplication().tables
        tablesQuery.staticTexts["Welcome fischertech01"].tap()
        tablesQuery.staticTexts["To get started, please complete your account details. Have your sensor ready to register and connect it. Finish your setup by adding a bat."].tap()

        
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Basic Details*"].tap()
        app.navigationBars["Basic Details"].staticTexts["Basic Details"].tap()
        
        let textField = tablesQuery.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element
        textField.tap()
        textField.tap()
//lastname
        
        let app = XCUIApplication()
        let textField = app.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element
        textField.tap()
        textField.typeText("My Llast Name")
        app.toolbars.buttons["Done"].tap()
// birthdate
        
        let app = XCUIApplication()
        let textField = app.tables.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element
        textField.tap()
        textField.tap()
        
        let datePickersQuery = app.datePickers
        datePickersQuery.pickerWheels["July"].tap()
        datePickersQuery.pickerWheels["4"].tap()
        datePickersQuery.pickerWheels["2017"].tap()
        app.toolbars.buttons["Done"].tap()

        //zip
        
        let app = XCUIApplication()
        let textField = app.tables.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element
        textField.tap()
        textField.typeText("92129")
        app.toolbars.buttons["Done"].tap()

        //gender
        
        let app = app2
        let textField = app.tables.children(matching: .cell).element(boundBy: 7).children(matching: .textField).element
        textField.tap()
        app.pickers.children(matching: .pickerWheel).element.press(forDuration: 1.3);
        
        let doneButton = app.toolbars.buttons["Done"]
        doneButton.tap()
        textField.tap()
        
        let app2 = app
        app2.pickerWheels["Female"].press(forDuration: 0.7);
        app2.pickerWheels["Male"].tap()
        doneButton.tap()
        
        //
        
        let app = XCUIApplication()
        app.tables.children(matching: .cell).element(boundBy: 8).children(matching: .textField).element.tap()
        app.pickers.children(matching: .pickerWheel).element.tap()
        
        let rightPickerWheel = app.pickerWheels["Right"]
        rightPickerWheel.tap()
        rightPickerWheel.tap()
        app.pickerWheels["Left"].tap()
        app.toolbars.buttons["Done"].tap()

        //height
        
        let app = app2
        app.tables.children(matching: .cell).element(boundBy: 9).children(matching: .textField).element.tap()
        
        let app2 = app
        app2.pickerWheels["5 ft"].tap()
        app2.pickerWheels["4 in"].tap()
        app.toolbars.buttons["Done"].tap()

        //weight
        
        let app = app2
        app.tables.children(matching: .cell).element(boundBy: 10).children(matching: .textField).element.tap()
        
        let app2 = app
        app2.pickerWheels["130 lbs"].tap()
        app2.pickerWheels["128 lbs"].tap()
        app.toolbars.buttons["Done"].tap()

        //save
        XCUIApplication().navigationBars["Basic Details"].buttons["Save"].tap()

        //welcome
        
        //register sensor from welcome
        XCUIApplication().tables.staticTexts["Register Sensor"].tap()
        //register sensor
        
        let app = XCUIApplication()
        app.navigationBars["Register Sensor"].staticTexts["Register Sensor"].tap()
        app.tables.buttons["Can't find a code?"].tap()
        //detect sensor
        app.staticTexts["Wakeup Your Sensor"].tap()
        app.staticTexts["Face the Blast logo towards the ground for 2 seconds, face the Blast logo towards the sky for 2 seconds, and repeat until it is activated."].tap()
        app.buttons["icSensor"].tap()
        //wait 30 seconds for ppup
        let sensorRegistrationAlert = app.alerts["Sensor Registration"]
        sensorRegistrationAlert.staticTexts["Sensor Registration"].tap()
        sensorRegistrationAlert.buttons["OK"].tap()
        app.navigationBars["NGABaseball.WakeSensorView"].buttons["icClose"].tap()
        //return to sensor page
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Register Sensor"].tap()
        tablesQuery.staticTexts["Position your sensor so that the serial number is in the camera frame."].tap()
        
        let textField = tablesQuery.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element
        textField.tap()
        textField.typeText("123456789")
        app.toolbars.buttons["Done"].tap()
        
        let sensorRegistrationAlert = app.alerts["Sensor Registration"]
        sensorRegistrationAlert.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 0).children(matching: .other).element.tap()
        //popup not found sensor
        sensorRegistrationAlert.staticTexts["There was an issue pairing your sensor. For assistance, please call Blast customer support at 1-855-632-5278. Let them know your sensor serial number is: 123456789"].tap()
        sensorRegistrationAlert.buttons["Close"].tap()
        //return to sensor page
        
        let app = XCUIApplication()
        let haveNoSensorLearnMoreAboutBlastBaseballAndPurchaseASensorOnlineAtHttpsBlastmotionComProductsBaseballStaticText = app.tables.staticTexts["Have no sensor? Learn more about Blast Baseball and purchase a sensor online at: https://blastmotion.com/products/baseball/"]
        haveNoSensorLearnMoreAboutBlastBaseballAndPurchaseASensorOnlineAtHttpsBlastmotionComProductsBaseballStaticText.tap()
        //app web info help to buy sensor
        let blastBaseballNavigationBar = app.navigationBars["Blast Baseball"]
        blastBaseballNavigationBar.staticTexts["Blast Baseball"].tap()

        XCUIApplication().navigationBars["Blast Baseball"].buttons["icBack"].tap()
        //return to sensor page
        XCUIApplication().navigationBars["Register Sensor"].staticTexts["Register Sensor"].tap()
        //return welcom page
        XCUIApplication().navigationBars["Register Sensor"].buttons["icBack"].tap()
        
        //return to welcome
        XCUIApplication().tables.staticTexts["Add Bat"].tap()
        //add new bat
        
        let app = app2
        app.tables.children(matching: .cell).element(boundBy: 1).children(matching: .textField).element.tap()
        app.pickers.children(matching: .pickerWheel).element.tap()
        //==========================
        let app2 = app
        app2.pickerWheels["Adidas"].tap()
        
        let app = app2
        app.tables.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element.tap()
        app.pickers.children(matching: .pickerWheel).element.tap()
        
        let app2 = app
        app2.pickerWheels["Cypher T-Ball Fast Pitch"].tap()
        app2.pickerWheels["Destiny Fast Pitch"].tap()
        app2.pickerWheels["Trilogy Youth"].tap()
        app2.pickerWheels["Vanquish T-Ball"].tap()
        
        let adidasAeroBurnerBbcorPickerWheel = app2.pickerWheels["Adidas Aero Burner BBCOR"]
        adidasAeroBurnerBbcorPickerWheel.tap()
        
        let adidasAeroBurnerCompPickerWheel = app2.pickerWheels["Adidas Aero Burner Comp"]
        adidasAeroBurnerCompPickerWheel.tap()
        
        let adidasAeroBurnerCompBbcorPickerWheel = app2.pickerWheels["Adidas Aero Burner Comp BBCOR"]
        adidasAeroBurnerCompBbcorPickerWheel.tap()
        
        let adidasAeroBurnerSrLeaguePickerWheel = app2.pickerWheels["Adidas Aero Burner Sr. League"]
        adidasAeroBurnerSrLeaguePickerWheel.tap()
        
        let eqtX1BbcorPickerWheel = app2.pickerWheels["EQT X1- BBCOR"]
        eqtX1BbcorPickerWheel.tap()
        
        let eqtX1SeniorLeaguePickerWheel = app2.pickerWheels["EQT X1- Senior League"]
        eqtX1SeniorLeaguePickerWheel.tap()
        app2.pickerWheels["EQT X2"].tap()
        
        let eqtX2BbcorPickerWheel = app2.pickerWheels["EQT X2- BBCOR"]
        eqtX2BbcorPickerWheel.tap()
        
        let eqtX3RbzRocketballzBbcorPickerWheel = app2.pickerWheels["EQT X3 RBZ RocketBallz BBCOR"]
        eqtX3RbzRocketballzBbcorPickerWheel.tap()
        adidasAeroBurnerBbcorPickerWheel.tap()
        adidasAeroBurnerCompPickerWheel.tap()
        adidasAeroBurnerCompBbcorPickerWheel.tap()
        adidasAeroBurnerSrLeaguePickerWheel.tap()
        eqtX1BbcorPickerWheel.tap()
        eqtX1SeniorLeaguePickerWheel.tap()
        eqtX2BbcorPickerWheel.tap()
        app2.pickerWheels["EQT X2- Senior League"].tap()
        eqtX3RbzRocketballzBbcorPickerWheel.tap()
        
        
        //============
        app2.pickerWheels["DeMarini"].tap()
        
        let app = XCUIApplication()
        app.tables.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element.tap()
        app.pickers.children(matching: .pickerWheel).element.tap()
        
        let bustosFastPitchPickerWheel = app.pickerWheels["Bustos Fast Pitch"]
        bustosFastPitchPickerWheel.tap()
        bustosFastPitchPickerWheel.tap()
        
        let cf5BbcorPickerWheel = app.pickerWheels["CF5 BBCor"]
        cf5BbcorPickerWheel.tap()
        cf5BbcorPickerWheel.tap()
        
        let cf5FastPitchPickerWheel = app.pickerWheels["CF5 Fast Pitch"]
        cf5FastPitchPickerWheel.tap()
        cf5FastPitchPickerWheel.tap()
        
        let cf5InsaneFastPitchPickerWheel = app.pickerWheels["CF5 Insane Fast Pitch"]
        cf5InsaneFastPitchPickerWheel.tap()
        cf5InsaneFastPitchPickerWheel.tap()
        
        let cf5LimitedEditionBbcorPickerWheel = app.pickerWheels["CF5 Limited Edition BBCor"]
        cf5LimitedEditionBbcorPickerWheel.tap()
        cf5LimitedEditionBbcorPickerWheel.tap()
        
        let cf5LimitedEditionSrPickerWheel = app.pickerWheels["CF5 Limited Edition SR"]
        cf5LimitedEditionSrPickerWheel.tap()
        cf5LimitedEditionSrPickerWheel.tap()
        
        let cf5LimitedEditionYouthPickerWheel = app.pickerWheels["CF5 Limited Edition Youth"]
        cf5LimitedEditionYouthPickerWheel.tap()
        cf5LimitedEditionYouthPickerWheel.tap()
        
        let cf5LimitedSrLeaguePickerWheel = app.pickerWheels["CF5 Limited Sr. League"]
        cf5LimitedSrLeaguePickerWheel.tap()
        cf5LimitedSrLeaguePickerWheel.tap()
        
        let cf5LimitedYouthLeaguePickerWheel = app.pickerWheels["CF5 Limited Youth League"]
        cf5LimitedYouthLeaguePickerWheel.tap()
        cf5LimitedYouthLeaguePickerWheel.tap()
        
        let cf5SrPickerWheel = app.pickerWheels["CF5 SR"]
        cf5SrPickerWheel.tap()
        cf5SrPickerWheel.tap()
        
        let cf5YouthPickerWheel = app.pickerWheels["CF5 Youth"]
        cf5YouthPickerWheel.tap()
        cf5YouthPickerWheel.tap()
        
        let cf6BbcorPickerWheel = app.pickerWheels["CF6 BBCor"]
        cf6BbcorPickerWheel.tap()
        cf6BbcorPickerWheel.tap()
        
        let cf6FastPitchPickerWheel = app.pickerWheels["CF6 Fast Pitch"]
        cf6FastPitchPickerWheel.tap()
        cf6FastPitchPickerWheel.tap()
        
        let cf6HopeFastPitchPickerWheel = app.pickerWheels["CF6 Hope Fast Pitch"]
        cf6HopeFastPitchPickerWheel.tap()
        cf6HopeFastPitchPickerWheel.tap()
        
        let cf6InsaneFastPitchPickerWheel = app.pickerWheels["CF6 Insane Fast Pitch"]
        cf6InsaneFastPitchPickerWheel.tap()
        cf6InsaneFastPitchPickerWheel.tap()
        
        let cf6SrPickerWheel = app.pickerWheels["CF6 SR"]
        cf6SrPickerWheel.tap()
        cf6SrPickerWheel.tap()
        
        let corndogWoodSlowPitchPickerWheel = app.pickerWheels["Corndog Wood Slow Pitch"]
        corndogWoodSlowPitchPickerWheel.tap()
        corndogWoodSlowPitchPickerWheel.tap()
        
        let flipperSlowPitchPickerWheel = app.pickerWheels["Flipper Slow Pitch"]
        flipperSlowPitchPickerWheel.tap()
        flipperSlowPitchPickerWheel.tap()
        
        let fuDawgSlowPitchPickerWheel = app.pickerWheels["Fu-Dawg Slow Pitch"]
        fuDawgSlowPitchPickerWheel.tap()
        fuDawgSlowPitchPickerWheel.tap()
        
        let insaneBbcorPickerWheel = app.pickerWheels["Insane BBCor"]
        insaneBbcorPickerWheel.tap()
        insaneBbcorPickerWheel.tap()
        
        let insaneSrPickerWheel = app.pickerWheels["Insane SR"]
        insaneSrPickerWheel.tap()
        insaneSrPickerWheel.tap()
        
        let insaneYouthPickerWheel = app.pickerWheels["Insane Youth"]
        insaneYouthPickerWheel.tap()
        insaneYouthPickerWheel.tap()
        
        let m2mBbcorPickerWheel = app.pickerWheels["M2M BBCor"]
        m2mBbcorPickerWheel.tap()
        m2mBbcorPickerWheel.tap()
        
        let m2mYouthPickerWheel = app.pickerWheels["M2M Youth"]
        m2mYouthPickerWheel.tap()
        m2mYouthPickerWheel.tap()
        
        let m2mYouthLeaguePickerWheel = app.pickerWheels["M2M Youth League"]
        m2mYouthLeaguePickerWheel.tap()
        m2mYouthLeaguePickerWheel.tap()
        
        let mercySlowPitchPickerWheel = app.pickerWheels["Mercy Slow Pitch"]
        mercySlowPitchPickerWheel.tap()
        mercySlowPitchPickerWheel.tap()
        
        let nt3JuggySlowPitchPickerWheel = app.pickerWheels["NT3 Juggy Slow Pitch"]
        nt3JuggySlowPitchPickerWheel.tap()
        nt3JuggySlowPitchPickerWheel.tap()
        
        let ntuJuggySlowPitchPickerWheel = app.pickerWheels["NTU Juggy Slow Pitch"]
        ntuJuggySlowPitchPickerWheel.tap()
        ntuJuggySlowPitchPickerWheel.tap()
        
        let proMapleCompositeD110PickerWheel = app.pickerWheels["Pro Maple Composite D110"]
        proMapleCompositeD110PickerWheel.tap()
        proMapleCompositeD110PickerWheel.tap()
        
        let proMapleCompositeD243PickerWheel = app.pickerWheels["Pro Maple Composite D243"]
        proMapleCompositeD243PickerWheel.tap()
        proMapleCompositeD243PickerWheel.tap()
        
        let proMapleCompositeD271PickerWheel = app.pickerWheels["Pro Maple Composite D271"]
        proMapleCompositeD271PickerWheel.tap()
        proMapleCompositeD271PickerWheel.tap()
        
        let proMapleCompositeS243PickerWheel = app.pickerWheels["Pro Maple Composite S243"]
        proMapleCompositeS243PickerWheel.tap()
        proMapleCompositeS243PickerWheel.tap()
        
        let proMapleCompositeD110BbcorPickerWheel = app.pickerWheels["Pro Maple Composite-D110 BBCor"]
        proMapleCompositeD110BbcorPickerWheel.tap()
        proMapleCompositeD110BbcorPickerWheel.tap()
        
        let proMapleCompositeD243BbcorPickerWheel = app.pickerWheels["Pro Maple Composite-D243 BBCor"]
        proMapleCompositeD243BbcorPickerWheel.tap()
        proMapleCompositeD243BbcorPickerWheel.tap()
        
        let proMapleCompositeD271BbcorPickerWheel = app.pickerWheels["Pro Maple Composite-D271 BBCor"]
        proMapleCompositeD271BbcorPickerWheel.tap()
        proMapleCompositeD271BbcorPickerWheel.tap()
        
        let rawSteelSlowPitchPickerWheel = app.pickerWheels["Raw Steel Slow Pitch"]
        rawSteelSlowPitchPickerWheel.tap()
        rawSteelSlowPitchPickerWheel.tap()
        
        let rayzrSlowPitchPickerWheel = app.pickerWheels["Rayzr Slow Pitch"]
        rayzrSlowPitchPickerWheel.tap()
        rayzrSlowPitchPickerWheel.tap()
        
        let sf5SlowPitchPickerWheel = app.pickerWheels["SF5 Slow Pitch"]
        sf5SlowPitchPickerWheel.tap()
        sf5SlowPitchPickerWheel.tap()
        
        let stadium21SlowPitchPickerWheel = app.pickerWheels["Stadium 2.1 Slow Pitch"]
        stadium21SlowPitchPickerWheel.tap()
        stadium21SlowPitchPickerWheel.tap()
        
        let stadiumCl22SlowPitchPickerWheel = app.pickerWheels["Stadium CL22 Slow Pitch"]
        stadiumCl22SlowPitchPickerWheel.tap()
        stadiumCl22SlowPitchPickerWheel.tap()
        
        let stadiumSOneSlowPitchPickerWheel = app.pickerWheels["Stadium S-One Slow Pitch"]
        stadiumSOneSlowPitchPickerWheel.tap()
        stadiumSOneSlowPitchPickerWheel.tap()
        
        let theOneSeniorSlowPitchPickerWheel = app.pickerWheels["The One Senior Slow Pitch"]
        theOneSeniorSlowPitchPickerWheel.tap()
        theOneSeniorSlowPitchPickerWheel.tap()
        
        let ultimateWeaponSlowPitchPickerWheel = app.pickerWheels["Ultimate Weapon Slow Pitch"]
        ultimateWeaponSlowPitchPickerWheel.tap()
        ultimateWeaponSlowPitchPickerWheel.tap()
        
        let vendettaFastPitchPickerWheel = app.pickerWheels["Vendetta Fast Pitch"]
        vendettaFastPitchPickerWheel.tap()
        vendettaFastPitchPickerWheel.tap()
        
        let vexxiumBbcorPickerWheel = app.pickerWheels["Vexxium BBCor"]
        vexxiumBbcorPickerWheel.tap()
        vexxiumBbcorPickerWheel.tap()
        
        let vexxiumNvsBbcorPickerWheel = app.pickerWheels["Vexxium NVS BBCor"]
        vexxiumNvsBbcorPickerWheel.tap()
        vexxiumNvsBbcorPickerWheel.tap()
        
        let vexxiumNvsBbcorPickerWheel2 = app.pickerWheels["Vexxium NVS-BBCor"]
        vexxiumNvsBbcorPickerWheel2.tap()
        vexxiumNvsBbcorPickerWheel2.tap()
        
        let vexxiumSrPickerWheel = app.pickerWheels["Vexxium SR"]
        vexxiumSrPickerWheel.tap()
        vexxiumSrPickerWheel.tap()
        
        let vexxiumSrLeaguePickerWheel = app.pickerWheels["Vexxium Sr. League"]
        vexxiumSrLeaguePickerWheel.tap()
        vexxiumSrLeaguePickerWheel.tap()
        
        let vexxiumYouthPickerWheel = app.pickerWheels["Vexxium Youth "]
        vexxiumYouthPickerWheel.tap()
        vexxiumYouthPickerWheel.tap()
        
        let vexxiumYouthLeaguePickerWheel = app.pickerWheels["Vexxium Youth League"]
        vexxiumYouthLeaguePickerWheel.tap()
        vexxiumYouthLeaguePickerWheel.tap()
        
        let voodooBbcorPickerWheel = app.pickerWheels["Voodoo BBCor"]
        voodooBbcorPickerWheel.tap()
        voodooBbcorPickerWheel.tap()
        voodooBbcorPickerWheel.tap()
        
        let voodooOverlordBbcorPickerWheel = app.pickerWheels["Voodoo Overlord BBCor"]
        voodooOverlordBbcorPickerWheel.tap()
        voodooOverlordBbcorPickerWheel.tap()
        
        let voodooOverlordLittleLeaguePickerWheel = app.pickerWheels["Voodoo Overlord Little League"]
        voodooOverlordLittleLeaguePickerWheel.tap()
        voodooOverlordLittleLeaguePickerWheel.tap()
        
        let voodooOverlordSrPickerWheel = app.pickerWheels["Voodoo Overlord SR"]
        voodooOverlordSrPickerWheel.tap()
        voodooOverlordSrPickerWheel.tap()
        
        let voodooParadoxBbcorPickerWheel = app.pickerWheels["Voodoo Paradox BBCor"]
        voodooParadoxBbcorPickerWheel.tap()
        voodooParadoxBbcorPickerWheel.tap()
        
        let voodooParadoxSrPickerWheel = app.pickerWheels["Voodoo Paradox SR"]
        voodooParadoxSrPickerWheel.tap()
        voodooParadoxSrPickerWheel.tap()
        
        let voodooParadoxSrLeaguePickerWheel = app.pickerWheels["Voodoo Paradox Sr. League"]
        voodooParadoxSrLeaguePickerWheel.tap()
        voodooParadoxSrLeaguePickerWheel.tap()
        
        let voodooParadoxYouthPickerWheel = app.pickerWheels["Voodoo Paradox Youth "]
        voodooParadoxYouthPickerWheel.tap()
        voodooParadoxYouthPickerWheel.tap()
        
        let voodooParadoxYouthLeaguePickerWheel = app.pickerWheels["Voodoo Paradox Youth League"]
        voodooParadoxYouthLeaguePickerWheel.tap()
        voodooParadoxYouthLeaguePickerWheel.tap()
        
        let voodooSrPickerWheel = app.pickerWheels["Voodoo SR"]
        voodooSrPickerWheel.tap()
        voodooSrPickerWheel.tap()
        
        let voodooSrLeaguePickerWheel = app.pickerWheels["Voodoo Sr. League"]
        voodooSrLeaguePickerWheel.tap()
        voodooSrLeaguePickerWheel.tap()
        
        let voodooX10LimitedBbcorPickerWheel = app.pickerWheels["Voodoo X10 Limited BBCor"]
        voodooX10LimitedBbcorPickerWheel.tap()
        voodooX10LimitedBbcorPickerWheel.tap()
        
        let voodooX10LimitedEditionBbcorPickerWheel = app.pickerWheels["Voodoo X10 Limited Edition BBCor"]
        voodooX10LimitedEditionBbcorPickerWheel.tap()
        voodooX10LimitedEditionBbcorPickerWheel.tap()
        
        let voodooYouthPickerWheel = app.pickerWheels["Voodoo Youth "]
        voodooYouthPickerWheel.tap()
        voodooYouthPickerWheel.tap()
        
        let voodooYouthLeaguePickerWheel = app.pickerWheels["Voodoo Youth League"]
        voodooYouthLeaguePickerWheel.tap()
        voodooYouthLeaguePickerWheel.tap()
        
        let whiteSteelSlowPitchPickerWheel = app.pickerWheels["White Steel Slow Pitch"]
        whiteSteelSlowPitchPickerWheel.tap()
        whiteSteelSlowPitchPickerWheel.tap()
        
        let voodooRawSeniorLeaguePickerWheel = app.pickerWheels["Voodoo RAW Senior League"]
        voodooRawSeniorLeaguePickerWheel.tap()
        voodooRawSeniorLeaguePickerWheel.tap()
        
        let cfInsaneEndLoadBbcorPickerWheel = app.pickerWheels["CF Insane End Load BBCOR"]
        cfInsaneEndLoadBbcorPickerWheel.tap()
        cfInsaneEndLoadBbcorPickerWheel.tap()
        
        let cfZenBbcorPickerWheel = app.pickerWheels["CF Zen BBCOR"]
        cfZenBbcorPickerWheel.tap()
        cfZenBbcorPickerWheel.tap()
        
        let cfZenJrBigBarrelPickerWheel = app.pickerWheels["CF Zen Jr. Big Barrel"]
        cfZenJrBigBarrelPickerWheel.tap()
        cfZenJrBigBarrelPickerWheel.tap()
        
        let cfZenSrLeaguePickerWheel = app.pickerWheels["CF Zen Sr. League"]
        cfZenSrLeaguePickerWheel.tap()
        cfZenSrLeaguePickerWheel.tap()
        
        let cfZenYouthLeaguePickerWheel = app.pickerWheels["CF Zen Youth League"]
        cfZenYouthLeaguePickerWheel.tap()
        cfZenYouthLeaguePickerWheel.tap()
        cfZenYouthLeaguePickerWheel.tap()
        app.pickerWheels["Voodoo Insane BBCOR"].tap()
        
        let app = XCUIApplication()
        let voodooJrBigBarrelPickerWheel = app.pickerWheels["Voodoo Jr. Big Barrel"]
        voodooJrBigBarrelPickerWheel.tap()
        voodooJrBigBarrelPickerWheel.tap()
        voodooJrBigBarrelPickerWheel.tap()
        
        let voodooOneBbcorPickerWheel = app.pickerWheels["Voodoo One BBCOR"]
        voodooOneBbcorPickerWheel.tap()
        voodooOneBbcorPickerWheel.tap()
        
        let voodooOneSeniorLeaguePickerWheel = app.pickerWheels["Voodoo One Senior League"]
        voodooOneSeniorLeaguePickerWheel.tap()
        voodooOneSeniorLeaguePickerWheel.tap()
        app.pickerWheels["Voodoo RAW Senior League"].tap()
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
        
        
        
        
        app2.pickerWheels["Louisville Slugger"].tap()
        app2.pickerWheels["Marucci"].tap()
        app2.pickerWheels["Mizuno"].tap()
        app2.pickerWheels["Nike"].tap()
        app2.pickerWheels["Quick Start"].tap()
        app2.pickerWheels["Rawlings"].tap()
        app2.pickerWheels["Reebok"].tap()
        app2.pickerWheels["Worth"].tap()
        app2.pickerWheels["Blast Motion Test"].tap()
        app.toolbars.buttons["Done"].tap()
        //other
        
        let app = XCUIApplication()
        let textField = app.tables.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element
        textField.tap()
        textField.typeText("hootdoog")
        app.toolbars.buttons["Done"].tap()
        //model
        
        let app = XCUIApplication()
        app.tables.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element.tap()
        app.toolbars.buttons["Done"].tap()
        


    }
    
    func testWelcome(){
        
    }
}



