//
//  URLParameterEncoder.swift
//  NetworkLayer
//
//  Created by Mohamed Korany Ali on 10/5/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//
import Foundation
public struct URLParameterEncoder: ParameterEncoder {
  
  /// for encoding parameters to makes them safe to be passed as URL parameters. As you should know some characters are forbidden in URLs.
  public  func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
    
    guard let url = urlRequest.url else { throw NetworkError.missingURL }
    
    if var urlComponents = URLComponents(url: url,
                                         resolvingAgainstBaseURL: false), !parameters.isEmpty {
      
      urlComponents.queryItems = [URLQueryItem]()
      
      for (key,value) in parameters {
        let queryItem = URLQueryItem(name: key,
                                     value: "\(value)".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed))
        urlComponents.queryItems?.append(queryItem)
      }
      urlRequest.url = urlComponents.url
    }
    
    if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
      urlRequest.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
    }
    
  }
}
