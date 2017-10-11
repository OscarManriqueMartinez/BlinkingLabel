//
//  AppInfo.swift
//  ___PROJECTNAME___
//
//  Created by Oscar Manrique on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.


import UIKit

public class AppInfo {
    
    
    public static func getVersion() -> String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return ""
    }
    
    public static func getBuild() -> String {
        if let version = Bundle.main.infoDictionary?[kCFBundleVersionKey as String] as? String {
            return version
        }
        return ""
    }
    
    public static func bundleId() -> String{
        
        if let bundleId = Bundle.main.bundleIdentifier {
            return bundleId
        }
        return ""
    }
}

