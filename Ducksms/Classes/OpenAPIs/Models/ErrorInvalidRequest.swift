//
// ErrorInvalidRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ErrorInvalidRequest: Codable { 


    public var status: Int?
    public var message: String?

    public init(status: Int?, message: String?) {
        self.status = status
        self.message = message
    }

}