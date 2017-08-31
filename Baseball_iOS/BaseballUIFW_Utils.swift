//
//  BaseballUIFW_Utils.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/30/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//


import XCTest
import Foundation


extension UIFrameworkUtils{
    
    //=====================================================
    //  T E S T  D A T A
    //=====================================================
    
    /// Description
    class Utils{
        
        func SaveDataToFile(path:String, txtdata:String){
            let dir = FileManager.default.urls(for: FileManager.SearchPathDirectory.cachesDirectory, in: FileManager.SearchPathDomainMask.userDomainMask).first!
            //let dir = FileManager.default.urls(for: FileManager.SearchPathDirectory.downloadsDirectory, in: FileManager.SearchPathDomainMask.userDomainMask).first!
            let fileurl =  dir.appendingPathComponent(path)//"log.txt")
            print(fileurl)
            //let string = "\(NSDate())\n"
            let data = txtdata.data(using: .utf8, allowLossyConversion: false)!
            
            if FileManager.default.fileExists(atPath: fileurl.path) {
                if let fileHandle = try? FileHandle(forUpdating: fileurl) {
                    fileHandle.seekToEndOfFile()
                    fileHandle.write(data)
                    fileHandle.closeFile()
                    
                }
            } else {
                try! data.write(to: fileurl, options: Data.WritingOptions.atomic)
            }
        }
        
//        func writeToFile(file:String, log: String) throws {
//            
//            if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//                
//                let path = dir.appendingPathComponent(file)
//                
//                do {
//                    let writer = try FileHandle(forWritingTo: path)
//                    writer.seekToEndOfFile()
//                    writer.write(log.data(using: String.Encoding.utf8)!)
//                    writer.closeFile()
//                }
//                catch {
//                    throw Throwing.impossibleToWrite
//                }
//            }
//        }
//        
//        func readFromFile(file:String) throws {
//            
//            if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//                
//                let path = dir.appendingPathComponent(file)
//                
//                do {
//                    let text = try String(contentsOf: path, encoding: String.Encoding.utf8)
//                    print(text)
//                }
//                catch {
//                    throw Throwing.impossibleToRead
//                }
//            }
//        }
        

    }
}
