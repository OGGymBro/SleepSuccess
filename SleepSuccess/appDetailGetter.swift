//
//  appDetailGetter.swift
//  SleepSuccess
//
//  Created by Joaquim Menezes on 05/07/24.
//

import Foundation

var appVersion: String {
    guard let infoDict = Bundle.main.infoDictionary,
          let version = infoDict["CFBundleShortVersionString"] as? String else {
        return "Unknown"
    }
    return version
}

var buildNumber: String {
    guard let infoDict = Bundle.main.infoDictionary,
          let build = infoDict["CFBundleVersion"] as? String else {
        return "Unknown"
    }
    return build
}
