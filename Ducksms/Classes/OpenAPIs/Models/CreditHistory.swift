//
// CreditHistory.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CreditHistory: Codable { 


    public var status: Int?
    public var message: String?
    public var data: [String:[Int]]?

    public init(status: Int?, message: String?, data: [String:[Int]]?) {
        self.status = status
        self.message = message
        self.data = data
    }

}
