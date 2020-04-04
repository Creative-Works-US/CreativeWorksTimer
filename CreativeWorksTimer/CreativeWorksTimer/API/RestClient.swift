//
//  RestClient.swift
//  CreativeWorksTimer
//
//  Created by Przemyslaw Pajak on 04/04/2020.
//  Copyright © 2020 CreativeWorks Systems, Inc. All rights reserved.
//

import Foundation
import Alamofire

/*
RestClient API
*/
public struct RestClient {
    static let DEBUG = false
	static var OAuthToken: String?	
    
    static var domain: String {
        if RestClient.DEBUG {
            // DEV
			return ""
        } else {
			return ""				
        }
    }
    
    public enum Router: URLRequestConvertible {
        
        static var BaseURLString: String {
            if RestClient.DEBUG {
                // DEV
				return RestClient.domain + "/api"
            } else {
                // LIVE
				return RestClient.domain + "/dashboard/api"
            }
        }
        /*
         * RestClient API calls
         */
		case profile

        public func asURLRequest() throws -> URLRequest {
            let (method, path, parameters): (Alamofire.HTTPMethod, String, [String: AnyObject]) = {
                switch self {
					default:
						return (.get, "profile/", [:])
                }
            }()
            
            let URL: Foundation.URL = Foundation.URL(string: Router.BaseURLString)!
            var mURLRequest = URLRequest(url: (URL.appendingPathComponent(path)))

            if let token = RestClient.OAuthToken {
                mURLRequest.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            }
            mURLRequest.httpMethod = method.rawValue
            mURLRequest.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringLocalCacheData
            print(parameters)
			print(mURLRequest.allHTTPHeaderFields ?? "")
			print(mURLRequest.url ?? "")

            return try URLEncoding.default.encode(mURLRequest, with: parameters.count > 0 ? parameters : nil)
        }
    }
}
