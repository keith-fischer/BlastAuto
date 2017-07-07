//
//  BaseballUIframework.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 6/26/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest

extension XCUIElement {
    /**
     Removes any current text in the field before typing in the new value
     - Parameter text: the text to enter into the field
     */
    func clearAndEnterText(text: String) {
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }
        self.tap()
        let deleteString = stringValue.characters.map { _ in XCUIKeyboardKeyDelete }.joined(separator: "")
        self.typeText(deleteString)
        self.typeText(text)
    }
    /*************************
     UI Synch
     **************************/
    func waitForElementToAppear(_ element: XCUIElement, wait: Double?=5) -> Bool {
        let expectation = XCTKVOExpectation(keyPath: "exists", object: element,
                                            expectedValue: true)
        let result = XCTWaiter().wait(for: [expectation], timeout: wait!)
        return result == .completed
    }
}
extension XCTestCase {
    fileprivate struct WaitData {
        static var waitExpectation: XCTestExpectation?
    }
    
    public func waitForDuration(_ duration: TimeInterval) {
        WaitData.waitExpectation = expectation(description: "wait")
        Timer.scheduledTimer(timeInterval: duration, target: self,
                             selector: #selector(XCTestCase.waitForDurationDone), userInfo: nil, repeats: false)
        waitForExpectations(timeout: duration + 3, handler: nil)
    }
    
    func waitForDurationDone() {
        WaitData.waitExpectation?.fulfill()
    }
    
    /*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    http requests for web service reporting
    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/
    fileprivate struct SessionData {
        static var uiTestServerAddress = "http://localhost:5000"
        
        static var session: URLSession?
    }
    
    public var uiTestServerAddress: String {
        get { return SessionData.uiTestServerAddress }
        set { SessionData.uiTestServerAddress = newValue }
    }
    
    var session: URLSession {
        get {
            if SessionData.session == nil {
                let sessionConfig = URLSessionConfiguration.ephemeral
                //SessionData.session = NSURLSession(configuration: sessionConfig, delegate: nil, delegateQueue: NSOperationQueue.mainQueue())
                SessionData.session = URLSession(configuration: sessionConfig)
            }
            return SessionData.session!
        }
    }
    
    func urlForEndpoint(_ endpoint: String, args: [String]) -> URL? {
        var urlString = "\(SessionData.uiTestServerAddress)/\(endpoint)"
        for arg in args {
            urlString += "/"
//            urlString += arg.urlencode() //bug =arg.urlencode
        }
        let endpoint = URL(string: urlString)
        guard let url = endpoint else {
            XCTFail("Invalid URL: \(urlString)")
            return nil
        }
        return url
    }
    
    func dataFromRemoteEndpoint(_ endpoint: String, method: String, args: [String]) -> Data? {
        guard let url = urlForEndpoint(endpoint, args: args) else {
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method
        
        var result: Data? = nil
        let expectation = self.expectation(description: "dataTask")
        let dataTask = session.dataTask(with: request) { data, response, error in
            // WARNING: NOT a main queue
            if error != nil {
                XCTFail("dataTaskWithRequest error (please check if UITestServer is running): \(error)")
                return
            }
            if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.statusCode != 200 {
                    XCTFail("dataTaskWithRequest: status code \(httpResponse.statusCode) received, please check if UITestServer is running")
                    return
                }
            }
            guard let responseData = data else {
                XCTFail("No data received (UITestServer not running?)")
                return
            }
            result = responseData
            expectation.fulfill()
        }
        dataTask.resume()
        waitForExpectations(timeout: 10.0, handler: nil)
        return result
    }
    
    func dataFromRemoteEndpoint(_ endpoint: String, method: String = "GET", args: String...) -> Data? {
        return dataFromRemoteEndpoint(endpoint, method: method, args: args)
    }
    
    func stringFromRemoteEndpoint(_ endpoint: String, method: String, args: [String]) -> String {
        let data = dataFromRemoteEndpoint(endpoint, method: method, args: args)
        if let stringData = data {
            let resolution = NSString(data: stringData, encoding: String.Encoding.utf8.rawValue) ?? ""
            return resolution as String
        }
        return ""
    }
    
    func stringFromRemoteEndpoint(_ endpoint: String, method: String = "GET", args: String...) -> String {
        return stringFromRemoteEndpoint(endpoint, method: method, args: args)
    }
    
    func callRemoteEndpoint(_ endpoint: String, method: String, args: [String]) {
        let _ = dataFromRemoteEndpoint(endpoint, method: method, args: args)
    }
    
    func callRemoteEndpoint(_ endpoint: String, method: String = "GET", args: String...) {
        callRemoteEndpoint(endpoint, method: method, args: args)
    }
    /*<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*/
    /*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
     Send screenshot to test manager
     
     >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/
    public func saveScreenshot(_ filename: String, createDirectory: Bool = true) {
        if createDirectory {
            let directory = (filename as NSString).deletingLastPathComponent
            let fileManager = FileManager.default
            if !fileManager.fileExists(atPath: directory) {
                do {
                    try fileManager.createDirectory(atPath: directory, withIntermediateDirectories: true, attributes: nil)
                } catch {
                    // Ignore
                }
            }
        }
        
        let data = dataFromRemoteEndpoint("screenshot.png")
        guard let imageData = data else {
            XCTFail("No data received (UITestServer not running?)")
            return
        }
        if imageData.count == 0 {
            XCTFail("Empty screenshot received")
            return
        }
        if !((try? imageData.write(to: URL(fileURLWithPath: filename), options: [])) != nil) {
            XCTFail("Unable to save the screenshot: \(filename)")
        }
        print("Screenshot saved: \(filename)")
    }
}
/*#####################################
Base class to the framework
put reusable UI query functions here

#######################################*/
public class UIFrameworkUtils{
    var fwapp: XCUIElement
    let new_account_email: String
    var account_email: String
    var account_name:String
    init(app: XCUIElement){
        self.fwapp = app
        print(type(of: self))
        self.account_name=UIFrameworkUtils.getUserName()
        self.new_account_email = self.account_name+"@gmail.com"
        self.account_email=self.new_account_email
        print("account email:"+self.account_email)
    }
    
    func Title(){
        print(self.fwapp.title)
    }
    
    func getTextField2(id:UInt) -> XCUIElement{
        let textField = self.fwapp.tables.children(matching: .cell).element(boundBy: id).children(matching: .textField).element
        return textField
    }
    
    class func getUserName() -> String{
        let str1: String = "automation"
        let timeStamp: TimeInterval = Date().timeIntervalSince1970
        let number = Int(timeStamp)
        let str2: String = "\(Int(number))"
        let rc: String = str1+str2
        return rc
    }
    
    class func CreateEmail() -> String{
        let str1: String = "automation"
        let str3: String = "@gmail.com"
        let timeStamp: TimeInterval = Date().timeIntervalSince1970
        let number = Int(timeStamp)
        let str2: String = "\(Int(number))"
        let rc: String = str1+str2+str3
        return rc
    }
    
    func showelements(listName:String,lists: XCUIElementQuery){
        print(listName + "==========")
        var elementLabels = [String]()
        for i in 0..<lists.count {
            elementLabels.append (lists.element(boundBy: i).label)
        }
        
        print (elementLabels)
    }
    func getTextField(id:UInt,secured:Bool?=false) -> XCUIElement{
        if (secured==true){
            let textField = self.fwapp.tables.children(matching: .cell).element(boundBy: id).children(matching: .secureTextField).element
            return textField
        }
        else{
            let textField = self.fwapp.tables.children(matching: .cell).element(boundBy: id).children(matching: .textField).element
            return textField
        }
    }
    
    func printinfo(msg: String?="",in_out:Int?=0,fninfo:String?="fn: \(#function), line: \(#line), file: \(#file)"){
        var innout = String()
        innout="" //in_out=0
        if(in_out!==1){
            innout = ">>>"
        }
        else if(in_out!==2){
            innout = "<<<"
        }

        print(innout+msg!+fninfo!)
    }
}

/*#####################################
Init framework
 #######################################*/
public class UIFramework: UIFrameworkUtils{
    
    override init(app: XCUIElement){
        super.init(app: app)
    }

    func uiStartup() -> ui_Startup{
        return ui_Startup(fw: self)
        
    }
    func uiMain() -> ui_Main{
        return ui_Main(fw: self)
    }
}
