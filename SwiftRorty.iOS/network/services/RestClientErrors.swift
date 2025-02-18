//
//  RestClientErrors.swift
//  SwiftRorty.iOS
//
//

import Foundation

//swiftlint:disable:this
enum RestClientErrors: Error {
    case requestFailed(error: Error)
    case requestFailed(code: Int)
    case noDataReceived
    case jsonDecode(error: Error)
}
