//
//  AnotherLogger.swift
//  OkLogger
//
//  Created by Tianbo Qiu on 3/28/25.
//

import Foundation

public class AnotherLogger {
    public static let shared = AnotherLogger()
    
    public static var count = 0
    
    public func log(_ message: String) {
        print("[swift, another] \(message)")
    }
}
