//
// ErrorValidation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ErrorValidation: Codable { 


    public var status: Int?
    public var message: String?
    public var errors: [String:[String]]?

    public init(status: Int?, message: String?, errors: [String:[String]]?) {
        self.status = status
        self.message = message
        self.errors = errors
    }

}
