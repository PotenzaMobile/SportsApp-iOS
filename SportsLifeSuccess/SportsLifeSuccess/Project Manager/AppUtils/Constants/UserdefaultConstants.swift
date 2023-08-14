//
//  UserdefaultConstants.swift
//  SportsLifeSuccess
//
//  Created by Potenza on 11/08/23.
//

import Foundation

class UserDefaultConstant {
    
    
    /*
     ====================================================================
     Function purpose : Save values in userdefaults.
     ====================================================================
     */
    func saveValueUD(key : String, valueToSave : String) {
        UserDefaults.standard.set(valueToSave, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    
    /*
     ====================================================================
     Function purpose : Remove specific value from userdefaults.
     ====================================================================
     */
    func removeValueFromUD(using key : String) {
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    
    /*
     ====================================================================
     Function purpose : Clear all userdefaults value.
     ====================================================================
     */
    func clearAllUserDefault() {
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
    }
    
}


struct UserDefaultKeys {
    
    //User
    static let kUserName = "UserName"
    static let kUserId = "UserId"
    static let kUserEmail = "UserEmail"
    
    //Club
    static let kClubEmail = "ClubEmail"
}

