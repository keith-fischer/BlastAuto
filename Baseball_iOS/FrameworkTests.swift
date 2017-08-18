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
    ///
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
        else if testname=="ttestMain_Progress_SwipeCharts"{
            ttestMain_Progress_SwipeCharts()}
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
        /// Manage test data in swift
        var dict:[String:[String]] = [
        // Test Data Set  >>>>>>>
        "test1_signin_user":["fischertech00@gmail.com"],
        "test1_signin_pw":["Qwerty1!"],
        "test1_ConfirmEmail":["Qwerty1!"],
        "test1_type":["I'M A PLAYER"],
        "test1_accountemail":[""],
        
        //test1_profile_bio
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
        
        //test1_profile_account
        "test1_profile_account_email":[""],
        "test1_profile_account_accountType":["I'M A PLAYER"],
        "test1_profile_account_phoneNumber":["9998881234"],
        "test1_profile_account_ZipCode":["99999"],
        
        //test1_profile_blastconnect
        "test1_profile_blastconnect_email":["dog@gmail.com"],
        "test1_profile_blastconnect_password":["zxzxjkdh482!3"],
        
        // test1_main_progress
        "test1_main_progress_day_swings":["6 swings"],
        "test1_main_progress_week_swings":["9 swings"],
        "test1_main_progress_month_swings":["20 swings"],
        "test1_main_progress_year_swings":["283 swings"],
        
        "test1_main_progress_day_swingsvideos":["0 videos"],
        "test1_main_progress_week_swingsvideos":["0 videos"],
        "test1_main_progress_month_swingsvideos":["0 videos"],
        "test1_main_progress_year_swingsvideos":["14 videos"],
        
        "test1_main_progress_day_sessions":["1 session"],
        "test1_main_progress_week_sessions":["1 session"],
        "test1_main_progress_month_sessions":["1 session"],
        "test1_main_progress_year_sessions":["10 sessions"],
        //this need to be in correct swipe order
        "test1_main_progress_chartnames":["Bat Speed","Peak Hand Speed","Attack Angle","Time to Contact","Blast Factor","Power","Peak Bat Speed","On Plane","Body Rotation","Vertical Bat Angle"],
        
        "test1_main_progress_day_BatSpeed_low":["35.8"],
        "test1_main_progress_day_BatSpeed_average":["43.6"],
        "test1_main_progress_day_BatSpeed_high":["48.4"],
        "test1_main_progress_week_BatSpeed_low":["35.8"],
        "test1_main_progress_week_BatSpeed_average":["52.0"],
        "test1_main_progress_week_BatSpeed_high":["75.7"],
        "test1_main_progress_month_BatSpeed_low":["35.8"],
        "test1_main_progress_month_BatSpeed_average":["52.2"],
        "test1_main_progress_month_BatSpeed_high":["75.7"],
        "test1_main_progress_year_BatSpeed_low":["33.5"],
        "test1_main_progress_year_BatSpeed_average":["50.7"],
        "test1_main_progress_year_BatSpeed_high":["75.7"],
        
        "test1_main_progress_day_PeakHandSpeed_low":["9.5"],
        "test1_main_progress_day_PeakHandSpeed_average":["13.7"],
        "test1_main_progress_day_PeakHandSpeed_high":["16.1"],
        "test1_main_progress_week_PeakHandSpeed_low":["9.5"],
        "test1_main_progress_week_PeakHandSpeed_average":["15.2"],
        "test1_main_progress_week_PeakHandSpeed_high":["19.8"],
        "test1_main_progress_month_PeakHandSpeed_low":["9.5"],
        "test1_main_progress_month_PeakHandSpeed_average":["16.9"],
        "test1_main_progress_month_PeakHandSpeed_high":["19.8"],
        "test1_main_progress_year_PeakHandSpeed_low":["9.5"],
        "test1_main_progress_year_PeakHandSpeed_average":["16.7"],
        "test1_main_progress_year_PeakHandSpeed_high":["21.5"],

        "test1_main_progress_day_AttackAngle_low":["5"],
        "test1_main_progress_day_AttackAngle_average":["11"],
        "test1_main_progress_day_AttackAngle_high":["24"],
        "test1_main_progress_week_AttackAngle_low":["-18"],
        "test1_main_progress_week_AttackAngle_average":["2"],
        "test1_main_progress_week_AttackAngle_high":["24"],
        "test1_main_progress_month_AttackAngle_low":["-18"],
        "test1_main_progress_month_AttackAngle_average":["8"],
        "test1_main_progress_month_AttackAngle_high":["24"],
        "test1_main_progress_year_AttackAngle_low":["-32"],
        "test1_main_progress_year_AttackAngle_average":["5"],
        "test1_main_progress_year_AttackAngle_high":["30"],
        
        "test1_main_progress_day_TimeToContact_low":[".26"],
        "test1_main_progress_day_TimeToContact_average":[".29"],
        "test1_main_progress_day_TimeToContact_high":[".33"],
        "test1_main_progress_week_TimeToContact_low":[".09"],
        "test1_main_progress_week_TimeToContact_average":[".22"],
        "test1_main_progress_week_TimeToContact_high":[".33"],
        "test1_main_progress_month_TimeToContact_low":[".09"],
        "test1_main_progress_month_TimeToContact_average":[".23"],
        "test1_main_progress_month_TimeToContact_high":[".33"],
        "test1_main_progress_year_TimeToContact_low":[".09"],
        "test1_main_progress_year_TimeToContact_average":[".20"],
        "test1_main_progress_year_TimeToContact_high":[".35"],
        
        "test1_main_progress_day_BlastFactor_low":["34"],
        "test1_main_progress_day_BlastFactor_average":["46"],
        "test1_main_progress_day_BlastFactor_high":["57"],
        "test1_main_progress_week_BlastFactor_low":["34"],
        "test1_main_progress_week_BlastFactor_average":["57"],
        "test1_main_progress_week_BlastFactor_high":["85"],
        "test1_main_progress_month_BlastFactor_low":["34"],
        "test1_main_progress_month_BlastFactor_average":["59"],
        "test1_main_progress_month_BlastFactor_high":["85"],
        "test1_main_progress_year_BlastFactor_low":["30"],
        "test1_main_progress_year_BlastFactor_average":["61"],
        "test1_main_progress_year_BlastFactor_high":["85"],
        
        "test1_main_progress_day_Power_low":["0.50"],
        "test1_main_progress_day_Power_average":["0.87"],
        "test1_main_progress_day_Power_high":["1.11"],
        "test1_main_progress_week_Power_low":["0.50"],
        "test1_main_progress_week_Power_average":["2.92"],
        "test1_main_progress_week_Power_high":["8.31"],
        "test1_main_progress_month_Power_low":["0.50"],
        "test1_main_progress_month_Power_average":["2.15"],
        "test1_main_progress_month_Power_high":["8.31"],
        "test1_main_progress_year_Power_low":["0.49"],
        "test1_main_progress_year_Power_average":["1.77"],
        "test1_main_progress_year_Power_high":["8.31"],
        
        "test1_main_progress_day_PeakBatSpeed_low":["35.8"],
        "test1_main_progress_day_PeakBatSpeed_average":["43.6"],
        "test1_main_progress_day_PeakBatSpeed_high":["48.4"],
        "test1_main_progress_week_PeakBatSpeed_low":["35.8"],
        "test1_main_progress_week_PeakBatSpeed_average":["52.7"],
        "test1_main_progress_week_PeakBatSpeed_high":["75.7"],
        "test1_main_progress_month_PeakBatSpeed_low":["35.8"],
        "test1_main_progress_month_PeakBatSpeed_average":["52.5"],
        "test1_main_progress_month_PeakBatSpeed_high":["75.7"],
        "test1_main_progress_year_PeakBatSpeed_low":["33.5"],
        "test1_main_progress_year_PeakBatSpeed_average":["50.8"],
        "test1_main_progress_year_PeakBatSpeed_high":["75.7"],
        
        "test1_main_progress_day_OnPlane_low":["30"],
        "test1_main_progress_day_OnPlane_average":["43"],
        "test1_main_progress_day_OnPlane_high":["54"],
        "test1_main_progress_week_OnPlane_low":["30"],
        "test1_main_progress_week_OnPlane_average":["60"],
        "test1_main_progress_week_OnPlane_high":["98"],
        "test1_main_progress_month_OnPlane_low":["30"],
        "test1_main_progress_month_OnPlane_average":["59"],
        "test1_main_progress_month_OnPlane_high":["98"],
        "test1_main_progress_year_OnPlane_low":["5"],
        "test1_main_progress_year_OnPlane_average":["61"],
        "test1_main_progress_year_OnPlane_high":["99"],
        
        "test1_main_progress_day_BodyRotation_low":["36"],
        "test1_main_progress_day_BodyRotation_average":["43"],
        "test1_main_progress_day_BodyRotation_high":["47"],
        "test1_main_progress_week_BodyRotation_low":["36"],
        "test1_main_progress_week_BodyRotation_average":["42"],
        "test1_main_progress_week_BodyRotation_high":["47"],
        "test1_main_progress_month_BodyRotation_low":["36"],
        "test1_main_progress_month_BodyRotation_average":["43"],
        "test1_main_progress_month_BodyRotation_high":["47"],
        "test1_main_progress_year_BodyRotation_low":["22"],
        "test1_main_progress_year_BodyRotation_average":["44"],
        "test1_main_progress_year_BodyRotation_high":["56"],
        
        "test1_main_progress_day_VerticalBatAngle_low":["-20"],
        "test1_main_progress_day_VerticalBatAngle_average":["-17"],
        "test1_main_progress_day_VerticalBatAngle_high":["-14"],
        "test1_main_progress_week_VerticalBatAngle_low":["-20"],
        "test1_main_progress_week_VerticalBatAngle_average":["-9"],
        "test1_main_progress_week_VerticalBatAngle_high":["10"],
        "test1_main_progress_month_VerticalBatAngle_low":["-29"],
        "test1_main_progress_month_VerticalBatAngle_average":["-17"],
        "test1_main_progress_month_VerticalBatAngle_high":["10"],
        "test1_main_progress_year_VerticalBatAngle_low":["-43"],
        "test1_main_progress_year_VerticalBatAngle_average":["-26"],
        "test1_main_progress_year_VerticalBatAngle_high":["10"],
        
        // Test Data Set >>>>>>>>>>
        "test2_user":["@utoMat1on"],
        "test2_pw":["Qwerty1!"],
        "test2_type":["coach"],
        "test2_accountemail":[""],
        
        // Test Data Set >>>>>>>>
        "test3_user":["fischertech00@gmail.com"],
        "test3_pw":["Qwerty1!"],
        "test3_type":["coach"],
        "test3_accountemail":[""]
        ]
        
        
        var TestName:String{
            get{return _testname}
            set(newvalue){_testname=newvalue}
        }
        

        /// wrapper function for easy acces to the data hash table
        /// Testname is prefixed with fieldname
        /// - Parameters:
        ///   - fieldname: substring of the data key. All data is stored as sring array
        ///   - dataindex: default is zero
        /// - Returns: String value based on the array dataindex
        public func getTestValueStr(fieldname:String,dataindex: Int?=0) -> String{
            let key=TestName+"_"+fieldname
            if let val = dict[key] {
                if val.count>0{
                    let rc = val[dataindex!]
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
        
        /// <#Description#>
        ///
        /// - Parameter fieldname: <#fieldname description#>
        /// - Returns: string array
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
        public func setTestValue(dictkey:String,dictvalue:[String]){
            dict.updateValue(dictvalue, forKey: dictkey)
        }
        
        
        /// Merge individual data element into array fetched from the key string array
        ///
        /// - Parameters:
        ///   - key: full key string with the test prefixed
        ///   - fieldvalue: string data
        ///   - dataindex: what array element to assign the data into
        /// - Returns: string array
        func mergedataindict(key:String,fieldvalue:String,dataindex:Int) ->[String]{
            var tdata=getTestValueStrArr(fieldname: key)
            if tdata.count > 0{
                if tdata.count>dataindex{
                    tdata[dataindex]=fieldvalue
                }
                else{//add elements to array
                    while (tdata.count>dataindex){
                        tdata.append("")
                    }
                    tdata[dataindex]=fieldvalue
                }
                return tdata
            }
            else{
                var tdata:[String]=[""]
                tdata[0]=fieldvalue
                return tdata
            }
        }
        
        /// During the test run can store field values for subsequent test dependencies
        /// set key by test field name
        /// - Parameters:
        ///   - fieldname: <#fieldname description#>
        ///   - fieldvalue: <#fieldvalue description#>
        public func setTestValue(fieldname:String,fieldvalue:String,dataindex:Int?=0){
            let key=TestName+"_"+fieldname
            let newarr = mergedataindict(key: key,fieldvalue: fieldvalue,dataindex:dataindex!)
            setTestValue(dictkey:key,dictvalue:newarr)
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
