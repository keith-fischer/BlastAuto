//
//  FrameworkTests.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/14/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//


import XCTest
import Foundation


// MARK: - Test data
extension NGABaseballUITests{
    //=====================================================
    //  T E S T  D R I V E R
    //=====================================================
    
    
    /// <#Description#>
    ///
    /// - Parameter tests: <#tests description#>
    func ttestdotest(tests: [String]){
        //let alltests=funclist()
        for test in tests {
            runtest(testname:test)
            
        }
    }
    
    /// All possible tests needs to be listed here
    /// TODO: This needs to use reflection to call test functions
    /// - Parameter testname: Needs to be the case sensitive full function name
    func runtest(testname:String){
        print("=====================")
        print(testname)
        print("=====================")
        if testname=="ttestStartup"{
            ttestStartup()}
        else if testname=="ttest_Menu_Profile_Coach"{
            ttest_Menu_Profile_Coach()}
        else if testname=="ttest_Menu_Profile_Player"{
            ttest_Menu_Profile_Player()}
        else if testname=="ttestLogin"{
            ttestLogin()}
        else if testname=="ttestCreateAccount"{
            ttestCreateAccount()}
        else if testname=="ttestMain_Progress_Welcome"{
            ttestMain_Progress_Welcome()}
        else if testname=="ttestCreateAccountFails"{
            ttestCreateAccountFails()}
        else if testname=="ttest_Main_Basic"{
            ttest_Main_Basic()}
        else{
            print("Test Not found")}
        
    }

    //=====================================================
    //  T E S T  D A T A
    //=====================================================
    
    /// Description
    class TestData{
        private var _testname: String = ""
        
        init(testname:String){
            _testname=testname
        }
        /// Manage test data in code
        var dict:[String:[String]] = [
        "test1_user":["fischertech00@gmail.com"],
        "test1_pw":["Qwerty1!"],
        "test1_type":["coach"],
        "test1_accountemail":[""],
        "test1_profile_bio_FirstName":["ABCDEFGH"],
        "test1_profile_bio_LastName":["xxx"],
        "test1_profile_bio_BirthDate_year":["1999"],
        "test1_profile_bio_BirthDate_month":["August"],
        "test1_profile_bio_BirthDate_day":["13"],
        "test1_profile_bio_Gender":["Male"],
        "test1_profile_bio_Bats":["Right"],
        "test1_profile_bio_Height_feet":["6 ft"],
        "test1_profile_bio_Height_inches":["7 in"],
        "test1_profile_bio_Weight":["144 lbs"],
        "test1_profile_bio_LevelOfPlay":["Other","Youth","Professional MLB"],
        "test1_profile_account_email":[""],
        "test1_profile_account_accountType":[""],
        "test1_profile_account_phoneNumber":[""],
        "test1_profile_account_ZipCode":["99999"],
        "test1_profile_account_email":[""],
        
        
        "test2_user":["@utoMat1on"],
        "test2_pw":["Qwerty1!"],
        "test2_type":["coach"],
        "test2_accountemail":[""],

        "test3_user":["fischertech00@gmail.com"],
        "test3_pw":["Qwerty1!"],
        "test3_type":["coach"],
        "test3_accountemail":[""]
        ]
        
        
        var TestName:String{
            get{return _testname}
            set(newvalue){_testname=newvalue}
        }
        
        /// <#Description#>
        ///
        /// - Parameter fieldname: <#fieldname description#>
        /// - Returns:  first element
        public func getTestValueStr(fieldname:String) -> String{
            let key=self._testname+"_"+fieldname
            if let val = dict[key] {
                if val.count>0{
                    let rc = val[0]
                    print("DICT: "+key+":"+rc)
                    return rc
                }
                else{
                    return ""
                }
            }
            else{
                return "KEY NOT FOUND"
            }
        }
        
        public func getTestValueStrArr(fieldname:String) -> [String]{
            let key=self._testname+"_"+fieldname
            if let val = dict[key] {
                print("DICT: "+key+":"+String(describing: val))
                return val 
            }
            else{
                return ["KEY NOT FOUND"]
            }
        }
        
        /// During the test run can store field values for subsequent test dependencies
        /// Set a literal key, value
        /// - Parameters:
        ///   - dictkey: <#dictkey description#>
        ///   - dictvalue: <#dictvalue description#>
        public func setTestValue(dictkey:String,dictvalue:String){
            dict.updateValue([dictvalue], forKey: dictkey)
        }
        
        /// During the test run can store field values for subsequent test dependencies
        /// set key by test field name
        /// - Parameters:
        ///   - fieldname: <#fieldname description#>
        ///   - fieldvalue: <#fieldvalue description#>
        public func setTestValue(fieldname:String,fieldvalue:String){
            let key=TestName+"_"+fieldname
            setTestValue(dictkey:key,dictvalue:fieldvalue)
        }
        func gettestkey(fieldname:String) -> String{
            return TestName+"_"+fieldname
        }
        
        /// Test fields dump of current test run
        ///
        /// - Returns: <#return value description#>
        func getTestKeyValuesReport() -> String{
            var rpt = ""
            let test=TestName+"_"
            for (k,v) in dict {
                if k.hasPrefix(test){
                    let vv=String(describing: v)
                    print("\(k) \t \(vv )")
                    rpt=rpt.appending("\nField:"+k+"\t Value:"+vv)
                    
                }
            }
            
            return rpt
        }
    }
    
    
    
    
}
