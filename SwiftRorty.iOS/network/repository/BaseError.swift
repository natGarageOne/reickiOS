//
//  BaseError.swift
//  SwiftRorty.iOS
//
//

import Foundation

enum BaseError : Error {
    case parse(description: String)
    case api(description: String)
}
