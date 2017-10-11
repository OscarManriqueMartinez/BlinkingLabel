
  AppInfo.swift
  ___PROJECTNAME___

  Created by Oscar Manrique on ___DATE___.
  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.


import UIKit

class AppInfo {
    
    
    static func getVersion() -> String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return ""
    }
    
    static func getBuild() -> String {
        if let version = Bundle.main.infoDictionary?[kCFBundleVersionKey as String] as? String {
            return version
        }
        return ""
    }
    
    static func bundleId() -> String{
        
        if let bundleId = Bundle.main.bundleIdentifier {
            return bundleId
        }
        return ""
    }
}

