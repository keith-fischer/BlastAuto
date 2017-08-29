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
}
//    //=====================================================
//    //  T E S T  D A T A
//    //=====================================================
//    
//    /// Description
//    class TestData{
//        private var _testname: String = ""
//        
//        init(testname:String){
//            _testname=testname
//        }
//        /// Manage test data in swift
//        var dict:[String:[String]] = [
//        // Test Data Set  >>>>>>>
//        "test1_signin_user":["fischertech00@gmail.com"],
//        "test1_signin_pw":["Qwerty1!"],
//        "test1_ConfirmEmail":["Qwerty1!"],
//        "test1_type":["I'M A PLAYER"],
//        "test1_accountemail":[""],
//        
//        //test1_profile_bio
//        "test1_profile_bio_FirstName":["ABCDEFGH"],
//        "test1_profile_bio_LastName":["xxx"],
//        "test1_profile_bio_BirthDate_year":["1999"],
//        "test1_profile_bio_BirthDate_month":["August"],
//        "test1_profile_bio_BirthDate_day":["13"],
//        "test1_profile_bio_Gender":["Male"],
//        "test1_profile_bio_Bats":["Right"],
//        "test1_profile_bio_Height_feet":["6 ft"],
//        "test1_profile_bio_Height_inches":["7 in"],
//        "test1_profile_bio_Weight":["144 lbs"],
//        "test1_profile_bio_LevelOfPlay":["Other","Youth","Professional MLB"],
//        
//        //test1_profile_account
//        "test1_profile_account_email":[""],
//        "test1_profile_account_accountType":["I'M A PLAYER"],
//        "test1_profile_account_phoneNumber":["9998881234"],
//        "test1_profile_account_ZipCode":["99999"],
//        
//        //test1_profile_blastconnect
//        "test1_profile_blastconnect_email":["dog@gmail.com"],
//        "test1_profile_blastconnect_password":["zxzxjkdh482!3"],
//        
//        // test1_main_progress
//        "test1_main_progress_day_swings":["6 swings"],
//        "test1_main_progress_week_swings":["9 swings"],
//        "test1_main_progress_month_swings":["20 swings"],
//        "test1_main_progress_year_swings":["283 swings"],
//        
//        "test1_main_progress_day_swingsvideos":["0 videos"],
//        "test1_main_progress_week_swingsvideos":["0 videos"],
//        "test1_main_progress_month_swingsvideos":["0 videos"],
//        "test1_main_progress_year_swingsvideos":["14 videos"],
//        
//        "test1_main_progress_day_sessions":["1 session"],
//        "test1_main_progress_week_sessions":["1 session"],
//        "test1_main_progress_month_sessions":["1 session"],
//        "test1_main_progress_year_sessions":["10 sessions"],
//        //this need to be in correct swipe order
//        "test1_main_progress_chartnames":["Bat Speed","Peak Hand Speed","Attack Angle","Time to Contact","Blast Factor","Power","Peak Bat Speed","On Plane","Body Rotation","Vertical Bat Angle"],
//        
//        //progress data
//        "test1_main_progress_stats_profile_lowhigh":["Lowest","Highest"],
//        "test1_main_progress_stats_profile_daterange":["Day","Week","Month","Year"],
//            
//        //BatSpeed =============================
//        "BatSpeed_low_day_BatSpeed":["35.8"],
//        "BatSpeed_low_day_PeakHandSpeed":["##"],
//        "BatSpeed_low_day_AttackAngle":["##"],
//        "BatSpeed_low_day_TimeToContact":["##"],
//        "BatSpeed_low_day_BlastFactor":["##"],
//        "BatSpeed_low_day_Power":["##"],
//        "BatSpeed_low_day_PeakBatSpeed":["##"],
//        "BatSpeed_low_day_OnPlane":["##"],
//        "BatSpeed_low_day_BodyRotation":["##"],
//        "BatSpeed_low_day_VerticalBatAngle":["##"],
//        "BatSpeed_high_day_BatSpeed":["##"],
//        "BatSpeed_high_day_PeakHandSpeed":["##"],
//        "BatSpeed_high_day_AttackAngle":["##"],
//        "BatSpeed_high_day_TimeToContact":["##"],
//        "BatSpeed_high_day_BlastFactor":["##"],
//        "BatSpeed_high_day_Power":["##"],
//        "BatSpeed_high_day_PeakBatSpeed":["##"],
//        "BatSpeed_high_day_OnPlane":["##"],
//        "BatSpeed_high_day_BodyRotation":["##"],
//        "BatSpeed_high_day_VerticalBatAngle":["##"],
//        
//        "BatSpeed_low_week_BatSpeed":["##"],
//        "BatSpeed_low_week_PeakHandSpeed":["##"],
//        "BatSpeed_low_week_AttackAngle":["##"],
//        "BatSpeed_low_week_TimeToContact":["##"],
//        "BatSpeed_low_week_BlastFactor":["##"],
//        "BatSpeed_low_week_Power":["##"],
//        "BatSpeed_low_week_PeakBatSpeed":["##"],
//        "BatSpeed_low_week_OnPlane":["##"],
//        "BatSpeed_low_week_BodyRotation":["##"],
//        "BatSpeed_low_week_VerticalBatAngle":["##"],
//        "BatSpeed_high_week_BatSpeed":["##"],
//        "BatSpeed_high_week_PeakHandSpeed":["##"],
//        "BatSpeed_high_week_AttackAngle":["##"],
//        "BatSpeed_high_week_TimeToContact":["##"],
//        "BatSpeed_high_week_BlastFactor":["##"],
//        "BatSpeed_high_week_Power":["##"],
//        "BatSpeed_high_week_PeakBatSpeed":["##"],
//        "BatSpeed_high_week_OnPlane":["##"],
//        "BatSpeed_high_week_BodyRotation":["##"],
//        "BatSpeed_high_week_VerticalBatAngle":["##"],
//        
//        "BatSpeed_low_month_BatSpeed":["##"],
//        "BatSpeed_low_month_PeakHandSpeed":["##"],
//        "BatSpeed_low_month_AttackAngle":["##"],
//        "BatSpeed_low_month_TimeToContact":["##"],
//        "BatSpeed_low_month_BlastFactor":["##"],
//        "BatSpeed_low_month_Power":["##"],
//        "BatSpeed_low_month_PeakBatSpeed":["##"],
//        "BatSpeed_low_month_OnPlane":["##"],
//        "BatSpeed_low_month_BodyRotation":["##"],
//        "BatSpeed_low_month_VerticalBatAngle":["##"],
//        "BatSpeed_high_month_BatSpeed":["##"],
//        "BatSpeed_high_month_PeakHandSpeed":["##"],
//        "BatSpeed_high_month_AttackAngle":["##"],
//        "BatSpeed_high_month_TimeToContact":["##"],
//        "BatSpeed_high_month_BlastFactor":["##"],
//        "BatSpeed_high_month_Power":["##"],
//        "BatSpeed_high_month_PeakBatSpeed":["##"],
//        "BatSpeed_high_month_OnPlane":["##"],
//        "BatSpeed_high_month_BodyRotation":["##"],
//        "BatSpeed_high_month_VerticalBatAngle":["##"],
//        
//        "BatSpeed_low_year_BatSpeed":["##"],
//        "BatSpeed_low_year_PeakHandSpeed":["##"],
//        "BatSpeed_low_year_AttackAngle":["##"],
//        "BatSpeed_low_year_TimeToContact":["##"],
//        "BatSpeed_low_year_BlastFactor":["##"],
//        "BatSpeed_low_year_Power":["##"],
//        "BatSpeed_low_year_PeakBatSpeed":["##"],
//        "BatSpeed_low_year_OnPlane":["##"],
//        "BatSpeed_low_year_BodyRotation":["##"],
//        "BatSpeed_low_year_VerticalBatAngle":["##"],
//        "BatSpeed_high_year_BatSpeed":["##"],
//        "BatSpeed_high_year_PeakHandSpeed":["##"],
//        "BatSpeed_high_year_AttackAngle":["##"],
//        "BatSpeed_high_year_TimeToContact":["##"],
//        "BatSpeed_high_year_BlastFactor":["##"],
//        "BatSpeed_high_year_Power":["##"],
//        "BatSpeed_high_year_PeakBatSpeed":["##"],
//        "BatSpeed_high_year_OnPlane":["##"],
//        "BatSpeed_high_year_BodyRotation":["##"],
//        "BatSpeed_high_year_VerticalBatAngle":["##"],
//
//        //PeakHandSpeed =============================
//        "PeakHandSpeed_low_day_BatSpeed":["##"],
//        "PeakHandSpeed_low_day_PeakHandSpeed":["##"],
//        "PeakHandSpeed_low_day_AttackAngle":["##"],
//        "PeakHandSpeed_low_day_TimeToContact":["##"],
//        "PeakHandSpeed_low_day_BlastFactor":["##"],
//        "PeakHandSpeed_low_day_Power":["##"],
//        "PeakHandSpeed_low_day_PeakBatSpeed":["##"],
//        "PeakHandSpeed_low_day_OnPlane":["##"],
//        "PeakHandSpeed_low_day_BodyRotation":["##"],
//        "PeakHandSpeed_low_day_VerticalBatAngle":["##"],
//        "PeakHandSpeed_high_day_BatSpeed":["##"],
//        "PeakHandSpeed_high_day_PeakHandSpeed":["##"],
//        "PeakHandSpeed_high_day_AttackAngle":["##"],
//        "PeakHandSpeed_high_day_TimeToContact":["##"],
//        "PeakHandSpeed_high_day_BlastFactor":["##"],
//        "PeakHandSpeed_high_day_Power":["##"],
//        "PeakHandSpeed_high_day_PeakBatSpeed":["##"],
//        "PeakHandSpeed_high_day_OnPlane":["##"],
//        "PeakHandSpeed_high_day_BodyRotation":["##"],
//        "PeakHandSpeed_high_day_VerticalBatAngle":["##"],
//        
//        "PeakHandSpeed_low_week_BatSpeed":["##"],
//        "PeakHandSpeed_low_week_PeakHandSpeed":["##"],
//        "PeakHandSpeed_low_week_AttackAngle":["##"],
//        "PeakHandSpeed_low_week_TimeToContact":["##"],
//        "PeakHandSpeed_low_week_BlastFactor":["##"],
//        "PeakHandSpeed_low_week_Power":["##"],
//        "PeakHandSpeed_low_week_PeakBatSpeed":["##"],
//        "PeakHandSpeed_low_week_OnPlane":["##"],
//        "PeakHandSpeed_low_week_BodyRotation":["##"],
//        "PeakHandSpeed_low_week_VerticalBatAngle":["##"],
//        "PeakHandSpeed_high_week_BatSpeed":["##"],
//        "PeakHandSpeed_high_week_PeakHandSpeed":["##"],
//        "PeakHandSpeed_high_week_AttackAngle":["##"],
//        "PeakHandSpeed_high_week_TimeToContact":["##"],
//        "PeakHandSpeed_high_week_BlastFactor":["##"],
//        "PeakHandSpeed_high_week_Power":["##"],
//        "PeakHandSpeed_high_week_PeakBatSpeed":["##"],
//        "PeakHandSpeed_high_week_OnPlane":["##"],
//        "PeakHandSpeed_high_week_BodyRotation":["##"],
//        "PeakHandSpeed_high_week_VerticalBatAngle":["##"],
//        
//        "PeakHandSpeed_low_month_BatSpeed":["##"],
//        "PeakHandSpeed_low_month_PeakHandSpeed":["##"],
//        "PeakHandSpeed_low_month_AttackAngle":["##"],
//        "PeakHandSpeed_low_month_TimeToContact":["##"],
//        "PeakHandSpeed_low_month_BlastFactor":["##"],
//        "PeakHandSpeed_low_month_Power":["##"],
//        "PeakHandSpeed_low_month_PeakBatSpeed":["##"],
//        "PeakHandSpeed_low_month_OnPlane":["##"],
//        "PeakHandSpeed_low_month_BodyRotation":["##"],
//        "PeakHandSpeed_low_month_VerticalBatAngle":["##"],
//        "PeakHandSpeed_high_month_BatSpeed":["##"],
//        "PeakHandSpeed_high_month_PeakHandSpeed":["##"],
//        "PeakHandSpeed_high_month_AttackAngle":["##"],
//        "PeakHandSpeed_high_month_TimeToContact":["##"],
//        "PeakHandSpeed_high_month_BlastFactor":["##"],
//        "PeakHandSpeed_high_month_Power":["##"],
//        "PeakHandSpeed_high_month_PeakBatSpeed":["##"],
//        "PeakHandSpeed_high_month_OnPlane":["##"],
//        "PeakHandSpeed_high_month_BodyRotation":["##"],
//        "PeakHandSpeed_high_month_VerticalBatAngle":["##"],
//        
//        "PeakHandSpeed_low_year_BatSpeed":["##"],
//        "PeakHandSpeed_low_year_PeakHandSpeed":["##"],
//        "PeakHandSpeed_low_year_AttackAngle":["##"],
//        "PeakHandSpeed_low_year_TimeToContact":["##"],
//        "PeakHandSpeed_low_year_BlastFactor":["##"],
//        "PeakHandSpeed_low_year_Power":["##"],
//        "PeakHandSpeed_low_year_PeakBatSpeed":["##"],
//        "PeakHandSpeed_low_year_OnPlane":["##"],
//        "PeakHandSpeed_low_year_BodyRotation":["##"],
//        "PeakHandSpeed_low_year_VerticalBatAngle":["##"],
//        "PeakHandSpeed_high_year_BatSpeed":["##"],
//        "PeakHandSpeed_high_year_PeakHandSpeed":["##"],
//        "PeakHandSpeed_high_year_AttackAngle":["##"],
//        "PeakHandSpeed_high_year_TimeToContact":["##"],
//        "PeakHandSpeed_high_year_BlastFactor":["##"],
//        "PeakHandSpeed_high_year_Power":["##"],
//        "PeakHandSpeed_high_year_PeakBatSpeed":["##"],
//        "PeakHandSpeed_high_year_OnPlane":["##"],
//        "PeakHandSpeed_high_year_BodyRotation":["##"],
//        "PeakHandSpeed_high_year_VerticalBatAngle":["##"],
//
//        
//        //AttackAngle ============================
//        "AttackAngle_low_day_BatSpeed":["##"],
//        "AttackAngle_low_day_PeakHandSpeed":["##"],
//        "AttackAngle_low_day_AttackAngle":["##"],
//        "AttackAngle_low_day_TimeToContact":["##"],
//        "AttackAngle_low_day_BlastFactor":["##"],
//        "AttackAngle_low_day_Power":["##"],
//        "AttackAngle_low_day_PeakBatSpeed":["##"],
//        "AttackAngle_low_day_OnPlane":["##"],
//        "AttackAngle_low_day_BodyRotation":["##"],
//        "AttackAngle_low_day_VerticalBatAngle":["##"],
//        "AttackAngle_high_day_BatSpeed":["##"],
//        "AttackAngle_high_day_PeakHandSpeed":["##"],
//        "AttackAngle_high_day_AttackAngle":["##"],
//        "AttackAngle_high_day_TimeToContact":["##"],
//        "AttackAngle_high_day_BlastFactor":["##"],
//        "AttackAngle_high_day_Power":["##"],
//        "AttackAngle_high_day_PeakBatSpeed":["##"],
//        "AttackAngle_high_day_OnPlane":["##"],
//        "AttackAngle_high_day_BodyRotation":["##"],
//        "AttackAngle_high_day_VerticalBatAngle":["##"],
//        
//        "AttackAngle_low_week_BatSpeed":["##"],
//        "AttackAngle_low_week_PeakHandSpeed":["##"],
//        "AttackAngle_low_week_AttackAngle":["##"],
//        "AttackAngle_low_week_TimeToContact":["##"],
//        "AttackAngle_low_week_BlastFactor":["##"],
//        "AttackAngle_low_week_Power":["##"],
//        "AttackAngle_low_week_PeakBatSpeed":["##"],
//        "AttackAngle_low_week_OnPlane":["##"],
//        "AttackAngle_low_week_BodyRotation":["##"],
//        "AttackAngle_low_week_VerticalBatAngle":["##"],
//        "AttackAngle_high_week_BatSpeed":["##"],
//        "AttackAngle_high_week_PeakHandSpeed":["##"],
//        "AttackAngle_high_week_AttackAngle":["##"],
//        "AttackAngle_high_week_TimeToContact":["##"],
//        "AttackAngle_high_week_BlastFactor":["##"],
//        "AttackAngle_high_week_Power":["##"],
//        "AttackAngle_high_week_PeakBatSpeed":["##"],
//        "AttackAngle_high_week_OnPlane":["##"],
//        "AttackAngle_high_week_BodyRotation":["##"],
//        "AttackAngle_high_week_VerticalBatAngle":["##"],
//        
//        "AttackAngle_low_month_BatSpeed":["##"],
//        "AttackAngle_low_month_PeakHandSpeed":["##"],
//        "AttackAngle_low_month_AttackAngle":["##"],
//        "AttackAngle_low_month_TimeToContact":["##"],
//        "AttackAngle_low_month_BlastFactor":["##"],
//        "AttackAngle_low_month_Power":["##"],
//        "AttackAngle_low_month_PeakBatSpeed":["##"],
//        "AttackAngle_low_month_OnPlane":["##"],
//        "AttackAngle_low_month_BodyRotation":["##"],
//        "AttackAngle_low_month_VerticalBatAngle":["##"],
//        "AttackAngle_high_month_BatSpeed":["##"],
//        "AttackAngle_high_month_PeakHandSpeed":["##"],
//        "AttackAngle_high_month_AttackAngle":["##"],
//        "AttackAngle_high_month_TimeToContact":["##"],
//        "AttackAngle_high_month_BlastFactor":["##"],
//        "AttackAngle_high_month_Power":["##"],
//        "AttackAngle_high_month_PeakBatSpeed":["##"],
//        "AttackAngle_high_month_OnPlane":["##"],
//        "AttackAngle_high_month_BodyRotation":["##"],
//        "AttackAngle_high_month_VerticalBatAngle":["##"],
//        
//        "AttackAngle_low_year_BatSpeed":["##"],
//        "AttackAngle_low_year_PeakHandSpeed":["##"],
//        "AttackAngle_low_year_AttackAngle":["##"],
//        "AttackAngle_low_year_TimeToContact":["##"],
//        "AttackAngle_low_year_BlastFactor":["##"],
//        "AttackAngle_low_year_Power":["##"],
//        "AttackAngle_low_year_PeakBatSpeed":["##"],
//        "AttackAngle_low_year_OnPlane":["##"],
//        "AttackAngle_low_year_BodyRotation":["##"],
//        "AttackAngle_low_year_VerticalBatAngle":["##"],
//        "AttackAngle_high_year_BatSpeed":["##"],
//        "AttackAngle_high_year_PeakHandSpeed":["##"],
//        "AttackAngle_high_year_AttackAngle":["##"],
//        "AttackAngle_high_year_TimeToContact":["##"],
//        "AttackAngle_high_year_BlastFactor":["##"],
//        "AttackAngle_high_year_Power":["##"],
//        "AttackAngle_high_year_PeakBatSpeed":["##"],
//        "AttackAngle_high_year_OnPlane":["##"],
//        "AttackAngle_high_year_BodyRotation":["##"],
//        "AttackAngle_high_year_VerticalBatAngle":["##"],
//        
//        //TimeToContact =================================
//        "TimeToContact_low_day_BatSpeed":["##"],
//        "TimeToContact_low_day_PeakHandSpeed":["##"],
//        "TimeToContact_low_day_AttackAngle":["##"],
//        "TimeToContact_low_day_TimeToContact":["##"],
//        "TimeToContact_low_day_BlastFactor":["##"],
//        "TimeToContact_low_day_Power":["##"],
//        "TimeToContact_low_day_PeakBatSpeed":["##"],
//        "TimeToContact_low_day_OnPlane":["##"],
//        "TimeToContact_low_day_BodyRotation":["##"],
//        "TimeToContact_low_day_VerticalBatAngle":["##"],
//        "TimeToContact_high_day_BatSpeed":["##"],
//        "TimeToContact_high_day_PeakHandSpeed":["##"],
//        "TimeToContact_high_day_AttackAngle":["##"],
//        "TimeToContact_high_day_TimeToContact":["##"],
//        "TimeToContact_high_day_BlastFactor":["##"],
//        "TimeToContact_high_day_Power":["##"],
//        "TimeToContact_high_day_PeakBatSpeed":["##"],
//        "TimeToContact_high_day_OnPlane":["##"],
//        "TimeToContact_high_day_BodyRotation":["##"],
//        "TimeToContact_high_day_VerticalBatAngle":["##"],
//        
//        "TimeToContact_low_week_BatSpeed":["##"],
//        "TimeToContact_low_week_PeakHandSpeed":["##"],
//        "TimeToContact_low_week_AttackAngle":["##"],
//        "TimeToContact_low_week_TimeToContact":["##"],
//        "TimeToContact_low_week_BlastFactor":["##"],
//        "TimeToContact_low_week_Power":["##"],
//        "TimeToContact_low_week_PeakBatSpeed":["##"],
//        "TimeToContact_low_week_OnPlane":["##"],
//        "TimeToContact_low_week_BodyRotation":["##"],
//        "TimeToContact_low_week_VerticalBatAngle":["##"],
//        "TimeToContact_high_week_BatSpeed":["##"],
//        "TimeToContact_high_week_PeakHandSpeed":["##"],
//        "TimeToContact_high_week_AttackAngle":["##"],
//        "TimeToContact_high_week_TimeToContact":["##"],
//        "TimeToContact_high_week_BlastFactor":["##"],
//        "TimeToContact_high_week_Power":["##"],
//        "TimeToContact_high_week_PeakBatSpeed":["##"],
//        "TimeToContact_high_week_OnPlane":["##"],
//        "TimeToContact_high_week_BodyRotation":["##"],
//        "TimeToContact_high_week_VerticalBatAngle":["##"],
//        
//        "TimeToContact_low_month_BatSpeed":["##"],
//        "TimeToContact_low_month_PeakHandSpeed":["##"],
//        "TimeToContact_low_month_AttackAngle":["##"],
//        "TimeToContact_low_month_TimeToContact":["##"],
//        "TimeToContact_low_month_BlastFactor":["##"],
//        "TimeToContact_low_month_Power":["##"],
//        "TimeToContact_low_month_PeakBatSpeed":["##"],
//        "TimeToContact_low_month_OnPlane":["##"],
//        "TimeToContact_low_month_BodyRotation":["##"],
//        "TimeToContact_low_month_VerticalBatAngle":["##"],
//        "TimeToContact_high_month_BatSpeed":["##"],
//        "TimeToContact_high_month_PeakHandSpeed":["##"],
//        "TimeToContact_high_month_AttackAngle":["##"],
//        "TimeToContact_high_month_TimeToContact":["##"],
//        "TimeToContact_high_month_BlastFactor":["##"],
//        "TimeToContact_high_month_Power":["##"],
//        "TimeToContact_high_month_PeakBatSpeed":["##"],
//        "TimeToContact_high_month_OnPlane":["##"],
//        "TimeToContact_high_month_BodyRotation":["##"],
//        "TimeToContact_high_month_VerticalBatAngle":["##"],
//        
//        "TimeToContact_low_year_BatSpeed":["##"],
//        "TimeToContact_low_year_PeakHandSpeed":["##"],
//        "TimeToContact_low_year_AttackAngle":["##"],
//        "TimeToContact_low_year_TimeToContact":["##"],
//        "TimeToContact_low_year_BlastFactor":["##"],
//        "TimeToContact_low_year_Power":["##"],
//        "TimeToContact_low_year_PeakBatSpeed":["##"],
//        "TimeToContact_low_year_OnPlane":["##"],
//        "TimeToContact_low_year_BodyRotation":["##"],
//        "TimeToContact_low_year_VerticalBatAngle":["##"],
//        "TimeToContact_high_year_BatSpeed":["##"],
//        "TimeToContact_high_year_PeakHandSpeed":["##"],
//        "TimeToContact_high_year_AttackAngle":["##"],
//        "TimeToContact_high_year_TimeToContact":["##"],
//        "TimeToContact_high_year_BlastFactor":["##"],
//        "TimeToContact_high_year_Power":["##"],
//        "TimeToContact_high_year_PeakBatSpeed":["##"],
//        "TimeToContact_high_year_OnPlane":["##"],
//        "TimeToContact_high_year_BodyRotation":["##"],
//        "TimeToContact_high_year_VerticalBatAngle":["##"],
//        
//        //BlastFactor ===================================
//        "BlastFactor_low_day_BatSpeed":["##"],
//        "BlastFactor_low_day_PeakHandSpeed":["##"],
//        "BlastFactor_low_day_AttackAngle":["##"],
//        "BlastFactor_low_day_TimeToContact":["##"],
//        "BlastFactor_low_day_BlastFactor":["##"],
//        "BlastFactor_low_day_Power":["##"],
//        "BlastFactor_low_day_PeakBatSpeed":["##"],
//        "BlastFactor_low_day_OnPlane":["##"],
//        "BlastFactor_low_day_BodyRotation":["##"],
//        "BlastFactor_low_day_VerticalBatAngle":["##"],
//        "BlastFactor_high_day_BatSpeed":["##"],
//        "BlastFactor_high_day_PeakHandSpeed":["##"],
//        "BlastFactor_high_day_AttackAngle":["##"],
//        "BlastFactor_high_day_TimeToContact":["##"],
//        "BlastFactor_high_day_BlastFactor":["##"],
//        "BlastFactor_high_day_Power":["##"],
//        "BlastFactor_high_day_PeakBatSpeed":["##"],
//        "BlastFactor_high_day_OnPlane":["##"],
//        "BlastFactor_high_day_BodyRotation":["##"],
//        "BlastFactor_high_day_VerticalBatAngle":["##"],
//        
//        "BlastFactor_low_week_BatSpeed":["##"],
//        "BlastFactor_low_week_PeakHandSpeed":["##"],
//        "BlastFactor_low_week_AttackAngle":["##"],
//        "BlastFactor_low_week_TimeToContact":["##"],
//        "BlastFactor_low_week_BlastFactor":["##"],
//        "BlastFactor_low_week_Power":["##"],
//        "BlastFactor_low_week_PeakBatSpeed":["##"],
//        "BlastFactor_low_week_OnPlane":["##"],
//        "BlastFactor_low_week_BodyRotation":["##"],
//        "BlastFactor_low_week_VerticalBatAngle":["##"],
//        "BlastFactor_high_week_BatSpeed":["##"],
//        "BlastFactor_high_week_PeakHandSpeed":["##"],
//        "BlastFactor_high_week_AttackAngle":["##"],
//        "BlastFactor_high_week_TimeToContact":["##"],
//        "BlastFactor_high_week_BlastFactor":["##"],
//        "BlastFactor_high_week_Power":["##"],
//        "BlastFactor_high_week_PeakBatSpeed":["##"],
//        "BlastFactor_high_week_OnPlane":["##"],
//        "BlastFactor_high_week_BodyRotation":["##"],
//        "BlastFactor_high_week_VerticalBatAngle":["##"],
//        
//        "BlastFactor_low_month_BatSpeed":["##"],
//        "BlastFactor_low_month_PeakHandSpeed":["##"],
//        "BlastFactor_low_month_AttackAngle":["##"],
//        "BlastFactor_low_month_TimeToContact":["##"],
//        "BlastFactor_low_month_BlastFactor":["##"],
//        "BlastFactor_low_month_Power":["##"],
//        "BlastFactor_low_month_PeakBatSpeed":["##"],
//        "BlastFactor_low_month_OnPlane":["##"],
//        "BlastFactor_low_month_BodyRotation":["##"],
//        "BlastFactor_low_month_VerticalBatAngle":["##"],
//        "BlastFactor_high_month_BatSpeed":["##"],
//        "BlastFactor_high_month_PeakHandSpeed":["##"],
//        "BlastFactor_high_month_AttackAngle":["##"],
//        "BlastFactor_high_month_TimeToContact":["##"],
//        "BlastFactor_high_month_BlastFactor":["##"],
//        "BlastFactor_high_month_Power":["##"],
//        "BlastFactor_high_month_PeakBatSpeed":["##"],
//        "BlastFactor_high_month_OnPlane":["##"],
//        "BlastFactor_high_month_BodyRotation":["##"],
//        "BlastFactor_high_month_VerticalBatAngle":["##"],
//        
//        "BlastFactor_low_year_BatSpeed":["##"],
//        "BlastFactor_low_year_PeakHandSpeed":["##"],
//        "BlastFactor_low_year_AttackAngle":["##"],
//        "BlastFactor_low_year_TimeToContact":["##"],
//        "BlastFactor_low_year_BlastFactor":["##"],
//        "BlastFactor_low_year_Power":["##"],
//        "BlastFactor_low_year_PeakBatSpeed":["##"],
//        "BlastFactor_low_year_OnPlane":["##"],
//        "BlastFactor_low_year_BodyRotation":["##"],
//        "BlastFactor_low_year_VerticalBatAngle":["##"],
//        "BlastFactor_high_year_BatSpeed":["##"],
//        "BlastFactor_high_year_PeakHandSpeed":["##"],
//        "BlastFactor_high_year_AttackAngle":["##"],
//        "BlastFactor_high_year_TimeToContact":["##"],
//        "BlastFactor_high_year_BlastFactor":["##"],
//        "BlastFactor_high_year_Power":["##"],
//        "BlastFactor_high_year_PeakBatSpeed":["##"],
//        "BlastFactor_high_year_OnPlane":["##"],
//        "BlastFactor_high_year_BodyRotation":["##"],
//        "BlastFactor_high_year_VerticalBatAngle":["##"],
//        
//        //Power ================================
//        "Power_low_day_BatSpeed":["##"],
//        "Power_low_day_PeakHandSpeed":["##"],
//        "Power_low_day_AttackAngle":["##"],
//        "Power_low_day_TimeToContact":["##"],
//        "Power_low_day_BlastFactor":["##"],
//        "Power_low_day_Power":["##"],
//        "Power_low_day_PeakBatSpeed":["##"],
//        "Power_low_day_OnPlane":["##"],
//        "Power_low_day_BodyRotation":["##"],
//        "Power_low_day_VerticalBatAngle":["##"],
//        "Power_high_day_BatSpeed":["##"],
//        "Power_high_day_PeakHandSpeed":["##"],
//        "Power_high_day_AttackAngle":["##"],
//        "Power_high_day_TimeToContact":["##"],
//        "Power_high_day_BlastFactor":["##"],
//        "Power_high_day_Power":["##"],
//        "Power_high_day_PeakBatSpeed":["##"],
//        "Power_high_day_OnPlane":["##"],
//        "Power_high_day_BodyRotation":["##"],
//        "Power_high_day_VerticalBatAngle":["##"],
//        
//        "Power_low_week_BatSpeed":["##"],
//        "Power_low_week_PeakHandSpeed":["##"],
//        "Power_low_week_AttackAngle":["##"],
//        "Power_low_week_TimeToContact":["##"],
//        "Power_low_week_BlastFactor":["##"],
//        "Power_low_week_Power":["##"],
//        "Power_low_week_PeakBatSpeed":["##"],
//        "Power_low_week_OnPlane":["##"],
//        "Power_low_week_BodyRotation":["##"],
//        "Power_low_week_VerticalBatAngle":["##"],
//        "Power_high_week_BatSpeed":["##"],
//        "Power_high_week_PeakHandSpeed":["##"],
//        "Power_high_week_AttackAngle":["##"],
//        "Power_high_week_TimeToContact":["##"],
//        "Power_high_week_BlastFactor":["##"],
//        "Power_high_week_Power":["##"],
//        "Power_high_week_PeakBatSpeed":["##"],
//        "Power_high_week_OnPlane":["##"],
//        "Power_high_week_BodyRotation":["##"],
//        "Power_high_week_VerticalBatAngle":["##"],
//        
//        "Power_low_month_BatSpeed":["##"],
//        "Power_low_month_PeakHandSpeed":["##"],
//        "Power_low_month_AttackAngle":["##"],
//        "Power_low_month_TimeToContact":["##"],
//        "Power_low_month_BlastFactor":["##"],
//        "Power_low_month_Power":["##"],
//        "Power_low_month_PeakBatSpeed":["##"],
//        "Power_low_month_OnPlane":["##"],
//        "Power_low_month_BodyRotation":["##"],
//        "Power_low_month_VerticalBatAngle":["##"],
//        "Power_high_month_BatSpeed":["##"],
//        "Power_high_month_PeakHandSpeed":["##"],
//        "Power_high_month_AttackAngle":["##"],
//        "Power_high_month_TimeToContact":["##"],
//        "Power_high_month_BlastFactor":["##"],
//        "Power_high_month_Power":["##"],
//        "Power_high_month_PeakBatSpeed":["##"],
//        "Power_high_month_OnPlane":["##"],
//        "Power_high_month_BodyRotation":["##"],
//        "Power_high_month_VerticalBatAngle":["##"],
//        
//        "Power_low_year_BatSpeed":["##"],
//        "Power_low_year_PeakHandSpeed":["##"],
//        "Power_low_year_AttackAngle":["##"],
//        "Power_low_year_TimeToContact":["##"],
//        "Power_low_year_BlastFactor":["##"],
//        "Power_low_year_Power":["##"],
//        "Power_low_year_PeakBatSpeed":["##"],
//        "Power_low_year_OnPlane":["##"],
//        "Power_low_year_BodyRotation":["##"],
//        "Power_low_year_VerticalBatAngle":["##"],
//        "Power_high_year_BatSpeed":["##"],
//        "Power_high_year_PeakHandSpeed":["##"],
//        "Power_high_year_AttackAngle":["##"],
//        "Power_high_year_TimeToContact":["##"],
//        "Power_high_year_BlastFactor":["##"],
//        "Power_high_year_Power":["##"],
//        "Power_high_year_PeakBatSpeed":["##"],
//        "Power_high_year_OnPlane":["##"],
//        "Power_high_year_BodyRotation":["##"],
//        "Power_high_year_VerticalBatAngle":["##"],
//        
//        //PeakBatSpeed =================================
//        "PeakBatSpeed_low_day_BatSpeed":["##"],
//        "PeakBatSpeed_low_day_PeakHandSpeed":["##"],
//        "PeakBatSpeed_low_day_AttackAngle":["##"],
//        "PeakBatSpeed_low_day_TimeToContact":["##"],
//        "PeakBatSpeed_low_day_BlastFactor":["##"],
//        "PeakBatSpeed_low_day_Power":["##"],
//        "PeakBatSpeed_low_day_PeakBatSpeed":["##"],
//        "PeakBatSpeed_low_day_OnPlane":["##"],
//        "PeakBatSpeed_low_day_BodyRotation":["##"],
//        "PeakBatSpeed_low_day_VerticalBatAngle":["##"],
//        "PeakBatSpeed_high_day_BatSpeed":["##"],
//        "PeakBatSpeed_high_day_PeakHandSpeed":["##"],
//        "PeakBatSpeed_high_day_AttackAngle":["##"],
//        "PeakBatSpeed_high_day_TimeToContact":["##"],
//        "PeakBatSpeed_high_day_BlastFactor":["##"],
//        "PeakBatSpeed_high_day_Power":["##"],
//        "PeakBatSpeed_high_day_PeakBatSpeed":["##"],
//        "PeakBatSpeed_high_day_OnPlane":["##"],
//        "PeakBatSpeed_high_day_BodyRotation":["##"],
//        "PeakBatSpeed_high_day_VerticalBatAngle":["##"],
//        
//        "PeakBatSpeed_low_week_BatSpeed":["##"],
//        "PeakBatSpeed_low_week_PeakHandSpeed":["##"],
//        "PeakBatSpeed_low_week_AttackAngle":["##"],
//        "PeakBatSpeed_low_week_TimeToContact":["##"],
//        "PeakBatSpeed_low_week_BlastFactor":["##"],
//        "PeakBatSpeed_low_week_Power":["##"],
//        "PeakBatSpeed_low_week_PeakBatSpeed":["##"],
//        "PeakBatSpeed_low_week_OnPlane":["##"],
//        "PeakBatSpeed_low_week_BodyRotation":["##"],
//        "PeakBatSpeed_low_week_VerticalBatAngle":["##"],
//        "PeakBatSpeed_high_week_BatSpeed":["##"],
//        "PeakBatSpeed_high_week_PeakHandSpeed":["##"],
//        "PeakBatSpeed_high_week_AttackAngle":["##"],
//        "PeakBatSpeed_high_week_TimeToContact":["##"],
//        "PeakBatSpeed_high_week_BlastFactor":["##"],
//        "PeakBatSpeed_high_week_Power":["##"],
//        "PeakBatSpeed_high_week_PeakBatSpeed":["##"],
//        "PeakBatSpeed_high_week_OnPlane":["##"],
//        "PeakBatSpeed_high_week_BodyRotation":["##"],
//        "PeakBatSpeed_high_week_VerticalBatAngle":["##"],
//        
//        "PeakBatSpeed_low_month_BatSpeed":["##"],
//        "PeakBatSpeed_low_month_PeakHandSpeed":["##"],
//        "PeakBatSpeed_low_month_AttackAngle":["##"],
//        "PeakBatSpeed_low_month_TimeToContact":["##"],
//        "PeakBatSpeed_low_month_BlastFactor":["##"],
//        "PeakBatSpeed_low_month_Power":["##"],
//        "PeakBatSpeed_low_month_PeakBatSpeed":["##"],
//        "PeakBatSpeed_low_month_OnPlane":["##"],
//        "PeakBatSpeed_low_month_BodyRotation":["##"],
//        "PeakBatSpeed_low_month_VerticalBatAngle":["##"],
//        "PeakBatSpeed_high_month_BatSpeed":["##"],
//        "PeakBatSpeed_high_month_PeakHandSpeed":["##"],
//        "PeakBatSpeed_high_month_AttackAngle":["##"],
//        "PeakBatSpeed_high_month_TimeToContact":["##"],
//        "PeakBatSpeed_high_month_BlastFactor":["##"],
//        "PeakBatSpeed_high_month_Power":["##"],
//        "PeakBatSpeed_high_month_PeakBatSpeed":["##"],
//        "PeakBatSpeed_high_month_OnPlane":["##"],
//        "PeakBatSpeed_high_month_BodyRotation":["##"],
//        "PeakBatSpeed_high_month_VerticalBatAngle":["##"],
//        
//        "PeakBatSpeed_low_year_BatSpeed":["##"],
//        "PeakBatSpeed_low_year_PeakHandSpeed":["##"],
//        "PeakBatSpeed_low_year_AttackAngle":["##"],
//        "PeakBatSpeed_low_year_TimeToContact":["##"],
//        "PeakBatSpeed_low_year_BlastFactor":["##"],
//        "PeakBatSpeed_low_year_Power":["##"],
//        "PeakBatSpeed_low_year_PeakBatSpeed":["##"],
//        "PeakBatSpeed_low_year_OnPlane":["##"],
//        "PeakBatSpeed_low_year_BodyRotation":["##"],
//        "PeakBatSpeed_low_year_VerticalBatAngle":["##"],
//        "PeakBatSpeed_high_year_BatSpeed":["##"],
//        "PeakBatSpeed_high_year_PeakHandSpeed":["##"],
//        "PeakBatSpeed_high_year_AttackAngle":["##"],
//        "PeakBatSpeed_high_year_TimeToContact":["##"],
//        "PeakBatSpeed_high_year_BlastFactor":["##"],
//        "PeakBatSpeed_high_year_Power":["##"],
//        "PeakBatSpeed_high_year_PeakBatSpeed":["##"],
//        "PeakBatSpeed_high_year_OnPlane":["##"],
//        "PeakBatSpeed_high_year_BodyRotation":["##"],
//        "PeakBatSpeed_high_year_VerticalBatAngle":["##"],
//        
//        //OnPlane ===========================
//        "OnPlane_low_day_BatSpeed":["##"],
//        "OnPlane_low_day_PeakHandSpeed":["##"],
//        "OnPlane_low_day_AttackAngle":["##"],
//        "OnPlane_low_day_TimeToContact":["##"],
//        "OnPlane_low_day_BlastFactor":["##"],
//        "OnPlane_low_day_Power":["##"],
//        "OnPlane_low_day_PeakBatSpeed":["##"],
//        "OnPlane_low_day_OnPlane":["##"],
//        "OnPlane_low_day_BodyRotation":["##"],
//        "OnPlane_low_day_VerticalBatAngle":["##"],
//        "OnPlane_high_day_BatSpeed":["##"],
//        "OnPlane_high_day_PeakHandSpeed":["##"],
//        "OnPlane_high_day_AttackAngle":["##"],
//        "OnPlane_high_day_TimeToContact":["##"],
//        "OnPlane_high_day_BlastFactor":["##"],
//        "OnPlane_high_day_Power":["##"],
//        "OnPlane_high_day_PeakBatSpeed":["##"],
//        "OnPlane_high_day_OnPlane":["##"],
//        "OnPlane_high_day_BodyRotation":["##"],
//        "OnPlane_high_day_VerticalBatAngle":["##"],
//        
//        "OnPlane_low_week_BatSpeed":["##"],
//        "OnPlane_low_week_PeakHandSpeed":["##"],
//        "OnPlane_low_week_AttackAngle":["##"],
//        "OnPlane_low_week_TimeToContact":["##"],
//        "OnPlane_low_week_BlastFactor":["##"],
//        "OnPlane_low_week_Power":["##"],
//        "OnPlane_low_week_PeakBatSpeed":["##"],
//        "OnPlane_low_week_OnPlane":["##"],
//        "OnPlane_low_week_BodyRotation":["##"],
//        "OnPlane_low_week_VerticalBatAngle":["##"],
//        "OnPlane_high_week_BatSpeed":["##"],
//        "OnPlane_high_week_PeakHandSpeed":["##"],
//        "OnPlane_high_week_AttackAngle":["##"],
//        "OnPlane_high_week_TimeToContact":["##"],
//        "OnPlane_high_week_BlastFactor":["##"],
//        "OnPlane_high_week_Power":["##"],
//        "OnPlane_high_week_PeakBatSpeed":["##"],
//        "OnPlane_high_week_OnPlane":["##"],
//        "OnPlane_high_week_BodyRotation":["##"],
//        "OnPlane_high_week_VerticalBatAngle":["##"],
//        
//        "OnPlane_low_month_BatSpeed":["##"],
//        "OnPlane_low_month_PeakHandSpeed":["##"],
//        "OnPlane_low_month_AttackAngle":["##"],
//        "OnPlane_low_month_TimeToContact":["##"],
//        "OnPlane_low_month_BlastFactor":["##"],
//        "OnPlane_low_month_Power":["##"],
//        "OnPlane_low_month_PeakBatSpeed":["##"],
//        "OnPlane_low_month_OnPlane":["##"],
//        "OnPlane_low_month_BodyRotation":["##"],
//        "OnPlane_low_month_VerticalBatAngle":["##"],
//        "OnPlane_high_month_BatSpeed":["##"],
//        "OnPlane_high_month_PeakHandSpeed":["##"],
//        "OnPlane_high_month_AttackAngle":["##"],
//        "OnPlane_high_month_TimeToContact":["##"],
//        "OnPlane_high_month_BlastFactor":["##"],
//        "OnPlane_high_month_Power":["##"],
//        "OnPlane_high_month_PeakBatSpeed":["##"],
//        "OnPlane_high_month_OnPlane":["##"],
//        "OnPlane_high_month_BodyRotation":["##"],
//        "OnPlane_high_month_VerticalBatAngle":["##"],
//        
//        "OnPlane_low_year_BatSpeed":["##"],
//        "OnPlane_low_year_PeakHandSpeed":["##"],
//        "OnPlane_low_year_AttackAngle":["##"],
//        "OnPlane_low_year_TimeToContact":["##"],
//        "OnPlane_low_year_BlastFactor":["##"],
//        "OnPlane_low_year_Power":["##"],
//        "OnPlane_low_year_PeakBatSpeed":["##"],
//        "OnPlane_low_year_OnPlane":["##"],
//        "OnPlane_low_year_BodyRotation":["##"],
//        "OnPlane_low_year_VerticalBatAngle":["##"],
//        "OnPlane_high_year_BatSpeed":["##"],
//        "OnPlane_high_year_PeakHandSpeed":["##"],
//        "OnPlane_high_year_AttackAngle":["##"],
//        "OnPlane_high_year_TimeToContact":["##"],
//        "OnPlane_high_year_BlastFactor":["##"],
//        "OnPlane_high_year_Power":["##"],
//        "OnPlane_high_year_PeakBatSpeed":["##"],
//        "OnPlane_high_year_OnPlane":["##"],
//        "OnPlane_high_year_BodyRotation":["##"],
//        "OnPlane_high_year_VerticalBatAngle":["##"],
//        
//        
//        //BodyRotation ==============================
//        "BodyRotation_low_day_BatSpeed":["##"],
//        "BodyRotation_low_day_PeakHandSpeed":["##"],
//        "BodyRotation_low_day_AttackAngle":["##"],
//        "BodyRotation_low_day_TimeToContact":["##"],
//        "BodyRotation_low_day_BlastFactor":["##"],
//        "BodyRotation_low_day_Power":["##"],
//        "BodyRotation_low_day_PeakBatSpeed":["##"],
//        "BodyRotation_low_day_OnPlane":["##"],
//        "BodyRotation_low_day_BodyRotation":["##"],
//        "BodyRotation_low_day_VerticalBatAngle":["##"],
//        "BodyRotation_high_day_BatSpeed":["##"],
//        "BodyRotation_high_day_PeakHandSpeed":["##"],
//        "BodyRotation_high_day_AttackAngle":["##"],
//        "BodyRotation_high_day_TimeToContact":["##"],
//        "BodyRotation_high_day_BlastFactor":["##"],
//        "BodyRotation_high_day_Power":["##"],
//        "BodyRotation_high_day_PeakBatSpeed":["##"],
//        "BodyRotation_high_day_OnPlane":["##"],
//        "BodyRotation_high_day_BodyRotation":["##"],
//        "BodyRotation_high_day_VerticalBatAngle":["##"],
//        
//        "BodyRotation_low_week_BatSpeed":["##"],
//        "BodyRotation_low_week_PeakHandSpeed":["##"],
//        "BodyRotation_low_week_AttackAngle":["##"],
//        "BodyRotation_low_week_TimeToContact":["##"],
//        "BodyRotation_low_week_BlastFactor":["##"],
//        "BodyRotation_low_week_Power":["##"],
//        "BodyRotation_low_week_PeakBatSpeed":["##"],
//        "BodyRotation_low_week_OnPlane":["##"],
//        "BodyRotation_low_week_BodyRotation":["##"],
//        "BodyRotation_low_week_VerticalBatAngle":["##"],
//        "BodyRotation_high_week_BatSpeed":["##"],
//        "BodyRotation_high_week_PeakHandSpeed":["##"],
//        "BodyRotation_high_week_AttackAngle":["##"],
//        "BodyRotation_high_week_TimeToContact":["##"],
//        "BodyRotation_high_week_BlastFactor":["##"],
//        "BodyRotation_high_week_Power":["##"],
//        "BodyRotation_high_week_PeakBatSpeed":["##"],
//        "BodyRotation_high_week_OnPlane":["##"],
//        "BodyRotation_high_week_BodyRotation":["##"],
//        "BodyRotation_high_week_VerticalBatAngle":["##"],
//        
//        "BodyRotation_low_month_BatSpeed":["##"],
//        "BodyRotation_low_month_PeakHandSpeed":["##"],
//        "BodyRotation_low_month_AttackAngle":["##"],
//        "BodyRotation_low_month_TimeToContact":["##"],
//        "BodyRotation_low_month_BlastFactor":["##"],
//        "BodyRotation_low_month_Power":["##"],
//        "BodyRotation_low_month_PeakBatSpeed":["##"],
//        "BodyRotation_low_month_OnPlane":["##"],
//        "BodyRotation_low_month_BodyRotation":["##"],
//        "BodyRotation_low_month_VerticalBatAngle":["##"],
//        "BodyRotation_high_month_BatSpeed":["##"],
//        "BodyRotation_high_month_PeakHandSpeed":["##"],
//        "BodyRotation_high_month_AttackAngle":["##"],
//        "BodyRotation_high_month_TimeToContact":["##"],
//        "BodyRotation_high_month_BlastFactor":["##"],
//        "BodyRotation_high_month_Power":["##"],
//        "BodyRotation_high_month_PeakBatSpeed":["##"],
//        "BodyRotation_high_month_OnPlane":["##"],
//        "BodyRotation_high_month_BodyRotation":["##"],
//        "BodyRotation_high_month_VerticalBatAngle":["##"],
//        
//        "BodyRotation_low_year_BatSpeed":["##"],
//        "BodyRotation_low_year_PeakHandSpeed":["##"],
//        "BodyRotation_low_year_AttackAngle":["##"],
//        "BodyRotation_low_year_TimeToContact":["##"],
//        "BodyRotation_low_year_BlastFactor":["##"],
//        "BodyRotation_low_year_Power":["##"],
//        "BodyRotation_low_year_PeakBatSpeed":["##"],
//        "BodyRotation_low_year_OnPlane":["##"],
//        "BodyRotation_low_year_BodyRotation":["##"],
//        "BodyRotation_low_year_VerticalBatAngle":["##"],
//        "BodyRotation_high_year_BatSpeed":["##"],
//        "BodyRotation_high_year_PeakHandSpeed":["##"],
//        "BodyRotation_high_year_AttackAngle":["##"],
//        "BodyRotation_high_year_TimeToContact":["##"],
//        "BodyRotation_high_year_BlastFactor":["##"],
//        "BodyRotation_high_year_Power":["##"],
//        "BodyRotation_high_year_PeakBatSpeed":["##"],
//        "BodyRotation_high_year_OnPlane":["##"],
//        "BodyRotation_high_year_BodyRotation":["##"],
//        "BodyRotation_high_year_VerticalBatAngle":["##"],
//        
//        
//        //VerticalBatAngle ==========================
//        "VerticalBatAngle_low_day_BatSpeed":["##"],
//        "VerticalBatAngle_low_day_PeakHandSpeed":["##"],
//        "VerticalBatAngle_low_day_AttackAngle":["##"],
//        "VerticalBatAngle_low_day_TimeToContact":["##"],
//        "VerticalBatAngle_low_day_BlastFactor":["##"],
//        "VerticalBatAngle_low_day_Power":["##"],
//        "VerticalBatAngle_low_day_PeakBatSpeed":["##"],
//        "VerticalBatAngle_low_day_OnPlane":["##"],
//        "VerticalBatAngle_low_day_BodyRotation":["##"],
//        "VerticalBatAngle_low_day_VerticalBatAngle":["##"],
//        "VerticalBatAngle_high_day_BatSpeed":["##"],
//        "VerticalBatAngle_high_day_PeakHandSpeed":["##"],
//        "VerticalBatAngle_high_day_AttackAngle":["##"],
//        "VerticalBatAngle_high_day_TimeToContact":["##"],
//        "VerticalBatAngle_high_day_BlastFactor":["##"],
//        "VerticalBatAngle_high_day_Power":["##"],
//        "VerticalBatAngle_high_day_PeakBatSpeed":["##"],
//        "VerticalBatAngle_high_day_OnPlane":["##"],
//        "VerticalBatAngle_high_day_BodyRotation":["##"],
//        "VerticalBatAngle_high_day_VerticalBatAngle":["##"],
//        
//        "VerticalBatAngle_low_week_BatSpeed":["##"],
//        "VerticalBatAngle_low_week_PeakHandSpeed":["##"],
//        "VerticalBatAngle_low_week_AttackAngle":["##"],
//        "VerticalBatAngle_low_week_TimeToContact":["##"],
//        "VerticalBatAngle_low_week_BlastFactor":["##"],
//        "VerticalBatAngle_low_week_Power":["##"],
//        "VerticalBatAngle_low_week_PeakBatSpeed":["##"],
//        "VerticalBatAngle_low_week_OnPlane":["##"],
//        "VerticalBatAngle_low_week_BodyRotation":["##"],
//        "VerticalBatAngle_low_week_VerticalBatAngle":["##"],
//        "VerticalBatAngle_high_week_BatSpeed":["##"],
//        "VerticalBatAngle_high_week_PeakHandSpeed":["##"],
//        "VerticalBatAngle_high_week_AttackAngle":["##"],
//        "VerticalBatAngle_high_week_TimeToContact":["##"],
//        "VerticalBatAngle_high_week_BlastFactor":["##"],
//        "VerticalBatAngle_high_week_Power":["##"],
//        "VerticalBatAngle_high_week_PeakBatSpeed":["##"],
//        "VerticalBatAngle_high_week_OnPlane":["##"],
//        "VerticalBatAngle_high_week_BodyRotation":["##"],
//        "VerticalBatAngle_high_week_VerticalBatAngle":["##"],
//        
//        "VerticalBatAngle_low_month_BatSpeed":["##"],
//        "VerticalBatAngle_low_month_PeakHandSpeed":["##"],
//        "VerticalBatAngle_low_month_AttackAngle":["##"],
//        "VerticalBatAngle_low_month_TimeToContact":["##"],
//        "VerticalBatAngle_low_month_BlastFactor":["##"],
//        "VerticalBatAngle_low_month_Power":["##"],
//        "VerticalBatAngle_low_month_PeakBatSpeed":["##"],
//        "VerticalBatAngle_low_month_OnPlane":["##"],
//        "VerticalBatAngle_low_month_BodyRotation":["##"],
//        "VerticalBatAngle_low_month_VerticalBatAngle":["##"],
//        "VerticalBatAngle_high_month_BatSpeed":["##"],
//        "VerticalBatAngle_high_month_PeakHandSpeed":["##"],
//        "VerticalBatAngle_high_month_AttackAngle":["##"],
//        "VerticalBatAngle_high_month_TimeToContact":["##"],
//        "VerticalBatAngle_high_month_BlastFactor":["##"],
//        "VerticalBatAngle_high_month_Power":["##"],
//        "VerticalBatAngle_high_month_PeakBatSpeed":["##"],
//        "VerticalBatAngle_high_month_OnPlane":["##"],
//        "VerticalBatAngle_high_month_BodyRotation":["##"],
//        "VerticalBatAngle_high_month_VerticalBatAngle":["##"],
//        
//        "VerticalBatAngle_low_year_BatSpeed":["##"],
//        "VerticalBatAngle_low_year_PeakHandSpeed":["##"],
//        "VerticalBatAngle_low_year_AttackAngle":["##"],
//        "VerticalBatAngle_low_year_TimeToContact":["##"],
//        "VerticalBatAngle_low_year_BlastFactor":["##"],
//        "VerticalBatAngle_low_year_Power":["##"],
//        "VerticalBatAngle_low_year_PeakBatSpeed":["##"],
//        "VerticalBatAngle_low_year_OnPlane":["##"],
//        "VerticalBatAngle_low_year_BodyRotation":["##"],
//        "VerticalBatAngle_low_year_VerticalBatAngle":["##"],
//        "VerticalBatAngle_high_year_BatSpeed":["##"],
//        "VerticalBatAngle_high_year_PeakHandSpeed":["##"],
//        "VerticalBatAngle_high_year_AttackAngle":["##"],
//        "VerticalBatAngle_high_year_TimeToContact":["##"],
//        "VerticalBatAngle_high_year_BlastFactor":["##"],
//        "VerticalBatAngle_high_year_Power":["##"],
//        "VerticalBatAngle_high_year_PeakBatSpeed":["##"],
//        "VerticalBatAngle_high_year_OnPlane":["##"],
//        "VerticalBatAngle_high_year_BodyRotation":["##"],
//        "VerticalBatAngle_high_year_VerticalBatAngle":["##"],
//            
//        
//        "test1_main_progress_day_BatSpeed_low":["35.8"],
//        "test1_main_progress_day_BatSpeed_average":["43.6"],
//        "test1_main_progress_day_BatSpeed_high":["48.4"],
//        "test1_main_progress_week_BatSpeed_low":["35.8"],
//        "test1_main_progress_week_BatSpeed_average":["52.0"],
//        "test1_main_progress_week_BatSpeed_high":["75.7"],
//        "test1_main_progress_month_BatSpeed_low":["35.8"],
//        "test1_main_progress_month_BatSpeed_average":["52.2"],
//        "test1_main_progress_month_BatSpeed_high":["75.7"],
//        "test1_main_progress_year_BatSpeed_low":["33.5"],
//        "test1_main_progress_year_BatSpeed_average":["50.7"],
//        "test1_main_progress_year_BatSpeed_high":["75.7"],
//        
//        "test1_main_progress_day_PeakHandSpeed_low":["9.5"],
//        "test1_main_progress_day_PeakHandSpeed_average":["13.7"],
//        "test1_main_progress_day_PeakHandSpeed_high":["16.1"],
//        "test1_main_progress_week_PeakHandSpeed_low":["9.5"],
//        "test1_main_progress_week_PeakHandSpeed_average":["15.2"],
//        "test1_main_progress_week_PeakHandSpeed_high":["19.8"],
//        "test1_main_progress_month_PeakHandSpeed_low":["9.5"],
//        "test1_main_progress_month_PeakHandSpeed_average":["16.9"],
//        "test1_main_progress_month_PeakHandSpeed_high":["19.8"],
//        "test1_main_progress_year_PeakHandSpeed_low":["9.5"],
//        "test1_main_progress_year_PeakHandSpeed_average":["16.7"],
//        "test1_main_progress_year_PeakHandSpeed_high":["21.5"],
//
//        "test1_main_progress_day_AttackAngle_low":["5"],
//        "test1_main_progress_day_AttackAngle_average":["11"],
//        "test1_main_progress_day_AttackAngle_high":["24"],
//        "test1_main_progress_week_AttackAngle_low":["-18"],
//        "test1_main_progress_week_AttackAngle_average":["2"],
//        "test1_main_progress_week_AttackAngle_high":["24"],
//        "test1_main_progress_month_AttackAngle_low":["-18"],
//        "test1_main_progress_month_AttackAngle_average":["8"],
//        "test1_main_progress_month_AttackAngle_high":["24"],
//        "test1_main_progress_year_AttackAngle_low":["-32"],
//        "test1_main_progress_year_AttackAngle_average":["5"],
//        "test1_main_progress_year_AttackAngle_high":["30"],
//        
//        "test1_main_progress_day_TimeToContact_low":[".26"],
//        "test1_main_progress_day_TimeToContact_average":[".29"],
//        "test1_main_progress_day_TimeToContact_high":[".33"],
//        "test1_main_progress_week_TimeToContact_low":[".09"],
//        "test1_main_progress_week_TimeToContact_average":[".22"],
//        "test1_main_progress_week_TimeToContact_high":[".33"],
//        "test1_main_progress_month_TimeToContact_low":[".09"],
//        "test1_main_progress_month_TimeToContact_average":[".23"],
//        "test1_main_progress_month_TimeToContact_high":[".33"],
//        "test1_main_progress_year_TimeToContact_low":[".09"],
//        "test1_main_progress_year_TimeToContact_average":[".20"],
//        "test1_main_progress_year_TimeToContact_high":[".35"],
//        
//        "test1_main_progress_day_BlastFactor_low":["34"],
//        "test1_main_progress_day_BlastFactor_average":["46"],
//        "test1_main_progress_day_BlastFactor_high":["57"],
//        "test1_main_progress_week_BlastFactor_low":["34"],
//        "test1_main_progress_week_BlastFactor_average":["57"],
//        "test1_main_progress_week_BlastFactor_high":["85"],
//        "test1_main_progress_month_BlastFactor_low":["34"],
//        "test1_main_progress_month_BlastFactor_average":["59"],
//        "test1_main_progress_month_BlastFactor_high":["85"],
//        "test1_main_progress_year_BlastFactor_low":["30"],
//        "test1_main_progress_year_BlastFactor_average":["61"],
//        "test1_main_progress_year_BlastFactor_high":["85"],
//        
//        "test1_main_progress_day_Power_low":["0.50"],
//        "test1_main_progress_day_Power_average":["0.87"],
//        "test1_main_progress_day_Power_high":["1.11"],
//        "test1_main_progress_week_Power_low":["0.50"],
//        "test1_main_progress_week_Power_average":["2.92"],
//        "test1_main_progress_week_Power_high":["8.31"],
//        "test1_main_progress_month_Power_low":["0.50"],
//        "test1_main_progress_month_Power_average":["2.15"],
//        "test1_main_progress_month_Power_high":["8.31"],
//        "test1_main_progress_year_Power_low":["0.49"],
//        "test1_main_progress_year_Power_average":["1.77"],
//        "test1_main_progress_year_Power_high":["8.31"],
//        
//        "test1_main_progress_day_PeakBatSpeed_low":["35.8"],
//        "test1_main_progress_day_PeakBatSpeed_average":["43.6"],
//        "test1_main_progress_day_PeakBatSpeed_high":["48.4"],
//        "test1_main_progress_week_PeakBatSpeed_low":["35.8"],
//        "test1_main_progress_week_PeakBatSpeed_average":["52.7"],
//        "test1_main_progress_week_PeakBatSpeed_high":["75.7"],
//        "test1_main_progress_month_PeakBatSpeed_low":["35.8"],
//        "test1_main_progress_month_PeakBatSpeed_average":["52.5"],
//        "test1_main_progress_month_PeakBatSpeed_high":["75.7"],
//        "test1_main_progress_year_PeakBatSpeed_low":["33.5"],
//        "test1_main_progress_year_PeakBatSpeed_average":["50.8"],
//        "test1_main_progress_year_PeakBatSpeed_high":["75.7"],
//        
//        "test1_main_progress_day_OnPlane_low":["30"],
//        "test1_main_progress_day_OnPlane_average":["43"],
//        "test1_main_progress_day_OnPlane_high":["54"],
//        "test1_main_progress_week_OnPlane_low":["30"],
//        "test1_main_progress_week_OnPlane_average":["60"],
//        "test1_main_progress_week_OnPlane_high":["98"],
//        "test1_main_progress_month_OnPlane_low":["30"],
//        "test1_main_progress_month_OnPlane_average":["59"],
//        "test1_main_progress_month_OnPlane_high":["98"],
//        "test1_main_progress_year_OnPlane_low":["5"],
//        "test1_main_progress_year_OnPlane_average":["61"],
//        "test1_main_progress_year_OnPlane_high":["99"],
//        
//        "test1_main_progress_day_BodyRotation_low":["36"],
//        "test1_main_progress_day_BodyRotation_average":["43"],
//        "test1_main_progress_day_BodyRotation_high":["47"],
//        "test1_main_progress_week_BodyRotation_low":["36"],
//        "test1_main_progress_week_BodyRotation_average":["42"],
//        "test1_main_progress_week_BodyRotation_high":["47"],
//        "test1_main_progress_month_BodyRotation_low":["36"],
//        "test1_main_progress_month_BodyRotation_average":["43"],
//        "test1_main_progress_month_BodyRotation_high":["47"],
//        "test1_main_progress_year_BodyRotation_low":["22"],
//        "test1_main_progress_year_BodyRotation_average":["44"],
//        "test1_main_progress_year_BodyRotation_high":["56"],
//        
//        "test1_main_progress_day_VerticalBatAngle_low":["-20"],
//        "test1_main_progress_day_VerticalBatAngle_average":["-17"],
//        "test1_main_progress_day_VerticalBatAngle_high":["-14"],
//        "test1_main_progress_week_VerticalBatAngle_low":["-20"],
//        "test1_main_progress_week_VerticalBatAngle_average":["-9"],
//        "test1_main_progress_week_VerticalBatAngle_high":["10"],
//        "test1_main_progress_month_VerticalBatAngle_low":["-29"],
//        "test1_main_progress_month_VerticalBatAngle_average":["-17"],
//        "test1_main_progress_month_VerticalBatAngle_high":["10"],
//        "test1_main_progress_year_VerticalBatAngle_low":["-43"],
//        "test1_main_progress_year_VerticalBatAngle_average":["-26"],
//        "test1_main_progress_year_VerticalBatAngle_high":["10"],
//        
//        // Test Data Set >>>>>>>>>>
//        "test2_user":["@utoMat1on"],
//        "test2_pw":["Qwerty1!"],
//        "test2_type":["coach"],
//        "test2_accountemail":[""],
//        
//        // Test Data Set >>>>>>>>
//        "test3_user":["fischertech00@gmail.com"],
//        "test3_pw":["Qwerty1!"],
//        "test3_type":["coach"],
//        "test3_accountemail":[""]
//        ]
//        
//        
//        var TestName:String{
//            get{return _testname}
//            set(newvalue){_testname=newvalue}
//        }
//        
//
//        /// wrapper function for easy acces to the data hash table
//        /// Testname is prefixed with fieldname
//        /// - Parameters:
//        ///   - fieldname: substring of the data key. All data is stored as sring array
//        ///   - dataindex: default is zero
//        /// - Returns: String value based on the array dataindex
//        public func getTestValueStr(fieldname:String,dataindex: Int?=0) -> String{
//            let key=TestName+"_"+fieldname
//            if let val = dict[key] {
//                if val.count>0{
//                    let rc = val[dataindex!]
//                    print("DICT: "+key+":"+rc)
//                    return rc
//                }
//                else{
//                    return ""
//                }
//            }
//            else{
//                return "KEY NOT FOUND"
//            }
//        }
//        
//        /// <#Description#>
//        ///
//        /// - Parameter fieldname: <#fieldname description#>
//        /// - Returns: string array
//        public func getTestValueStrArr(fieldname:String) -> [String]{
//            let key=self._testname+"_"+fieldname
//            if let val = dict[key] {
//                print("DICT: "+key+":"+String(describing: val))
//                return val 
//            }
//            else{
//                return ["KEY NOT FOUND"]
//            }
//        }
//        
//        /// During the test run can store field values for subsequent test dependencies
//        /// Set a literal key, value
//        /// - Parameters:
//        ///   - dictkey: <#dictkey description#>
//        ///   - dictvalue: <#dictvalue description#>
//        public func setTestValue(dictkey:String,dictvalue:[String]){
//            dict.updateValue(dictvalue, forKey: dictkey)
//        }
//        
//        
//        /// Merge individual data element into array fetched from the key string array
//        ///
//        /// - Parameters:
//        ///   - key: full key string with the test prefixed
//        ///   - fieldvalue: string data
//        ///   - dataindex: what array element to assign the data into
//        /// - Returns: string array
//        func mergedataindict(key:String,fieldvalue:String,dataindex:Int) ->[String]{
//            var tdata=getTestValueStrArr(fieldname: key)
//            if tdata.count > 0{
//                if tdata.count>dataindex{
//                    tdata[dataindex]=fieldvalue
//                }
//                else{//add elements to array
//                    while (tdata.count>dataindex){
//                        tdata.append("")
//                    }
//                    tdata[dataindex]=fieldvalue
//                }
//                return tdata
//            }
//            else{
//                var tdata:[String]=[""]
//                tdata[0]=fieldvalue
//                return tdata
//            }
//        }
//        
//        /// During the test run can store field values for subsequent test dependencies
//        /// set key by test field name
//        /// - Parameters:
//        ///   - fieldname: <#fieldname description#>
//        ///   - fieldvalue: <#fieldvalue description#>
//        public func setTestValue(fieldname:String,fieldvalue:String,dataindex:Int?=0){
//            let key=TestName+"_"+fieldname
//            let newarr = mergedataindict(key: key,fieldvalue: fieldvalue,dataindex:dataindex!)
//            setTestValue(dictkey:key,dictvalue:newarr)
//        }
//        func gettestkey(fieldname:String) -> String{
//            return TestName+"_"+fieldname
//        }
//        
//        /// Test fields dump of current test run
//        ///
//        /// - Returns: <#return value description#>
//        func getTestKeyValuesReport() -> String{
//            var rpt = ""
//            let test=TestName+"_"
//            for (k,v) in dict {
//                if k.hasPrefix(test){
//                    let vv=String(describing: v)
//                    print("\(k) \t \(vv )")
//                    rpt=rpt.appending("\nField:"+k+"\t Value:"+vv)
//                    
//                }
//            }
//            
//            return rpt
//        }
//    }
//}
