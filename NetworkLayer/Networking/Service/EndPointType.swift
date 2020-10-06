//
//  EndPointType.swift
//  NetworkLayer
//
//  Created by Mohamed Korany Ali on 10/5/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import Foundation
protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
