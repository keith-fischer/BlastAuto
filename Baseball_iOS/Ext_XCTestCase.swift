//
//  Ext_XCTestCase.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/14/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//


import Foundation
import XCTest



// MARK: - <#Description#>
extension XCTestCase {
    fileprivate struct WaitData {
        static var waitExpectation: XCTestExpectation?
    }
    
    /// <#Description#>
    ///
    /// - Parameter duration: <#duration description#>
    public func waitForDuration(_ duration: TimeInterval) {
        WaitData.waitExpectation = expectation(description: "wait")
        Timer.scheduledTimer(timeInterval: duration, target: self,
                             selector: #selector(XCTestCase.waitForDurationDone), userInfo: nil, repeats: false)
        waitForExpectations(timeout: duration + 3, handler: nil)
    }
    
    /// <#Description#>
    func waitForDurationDone() {
        WaitData.waitExpectation?.fulfill()
    }
    
    /*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
     http requests for web service reporting
     >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/
    /// <#Description#>
    fileprivate struct SessionData {
        static var uiTestServerAddress = "http://localhost:5000"
        
        static var session: URLSession?
    }
    
    /// <#Description#>
    public var uiTestServerAddress: String {
        get { return SessionData.uiTestServerAddress }
        set { SessionData.uiTestServerAddress = newValue }
    }
    
    /// <#Description#>
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
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - endpoint: <#endpoint description#>
    ///   - args: <#args description#>
    /// - Returns: <#return value description#>
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
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - endpoint: <#endpoint description#>
    ///   - method: <#method description#>
    ///   - args: <#args description#>
    /// - Returns: <#return value description#>
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
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - endpoint: <#endpoint description#>
    ///   - method: <#method description#>
    ///   - args: <#args description#>
    /// - Returns: <#return value description#>
    func dataFromRemoteEndpoint(_ endpoint: String, method: String = "GET", args: String...) -> Data? {
        return dataFromRemoteEndpoint(endpoint, method: method, args: args)
    }
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - endpoint: <#endpoint description#>
    ///   - method: <#method description#>
    ///   - args: <#args description#>
    /// - Returns: <#return value description#>
    func stringFromRemoteEndpoint(_ endpoint: String, method: String, args: [String]) -> String {
        let data = dataFromRemoteEndpoint(endpoint, method: method, args: args)
        if let stringData = data {
            let resolution = NSString(data: stringData, encoding: String.Encoding.utf8.rawValue) ?? ""
            return resolution as String
        }
        return ""
    }
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - endpoint: <#endpoint description#>
    ///   - method: <#method description#>
    ///   - args: <#args description#>
    /// - Returns: <#return value description#>
    func stringFromRemoteEndpoint(_ endpoint: String, method: String = "GET", args: String...) -> String {
        return stringFromRemoteEndpoint(endpoint, method: method, args: args)
    }
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - endpoint: <#endpoint description#>
    ///   - method: <#method description#>
    ///   - args: <#args description#>
    func callRemoteEndpoint(_ endpoint: String, method: String, args: [String]) {
        let _ = dataFromRemoteEndpoint(endpoint, method: method, args: args)
    }
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - endpoint: <#endpoint description#>
    ///   - method: <#method description#>
    ///   - args: <#args description#>
    func callRemoteEndpoint(_ endpoint: String, method: String = "GET", args: String...) {
        callRemoteEndpoint(endpoint, method: method, args: args)
    }
    /*<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*/
    /*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
     Send screenshot to test manager
     
     >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/
    /// saveScreenshot
    ///
    /// - Parameters:
    ///   - filename: <#filename description#>
    ///   - createDirectory: <#createDirectory description#>
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
