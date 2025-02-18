//
//  APIClient.swift
//  SwiftRorty.iOS
//
//

import Foundation
import Combine

protocol APIClient {
    func request<T: Decodable>(_ urlRequest: URLRequest) -> AnyPublisher<T, BaseError>
}
