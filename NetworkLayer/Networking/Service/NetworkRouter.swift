//
//  NetworkRouter.swift
//  NetworkLayer
//
//  Created by Mohamed Korany Ali on 10/6/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import Foundation
public typealias NetworkRouterCompletion = (_ data: Data?,_ response: URLResponse?,_ error: Error?)->()

protocol NetworkRouter: class {
    associatedtype EndPoint: EndPointType
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
