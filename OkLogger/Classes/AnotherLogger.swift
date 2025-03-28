//
//  AnotherLogger.swift
//  OkLogger
//
//  Created by Tianbo Qiu on 3/28/25.
//

import Foundation

@objc
public class AnotherLogger: NSObject {
    @objc
    public static let shared = AnotherLogger()
    
    @objc
    public static var count = 0
    
    @objc
    public func log(_ message: String) {
        print("[swift, another] \(message)")
    }
}
