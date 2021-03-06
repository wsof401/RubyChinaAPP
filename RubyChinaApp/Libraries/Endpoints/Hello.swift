//
// Created by 姜军 on 12/16/15.
// Copyright (c) 2015 RubyChina. All rights reserved.
//

import Foundation
import SwiftyJSON
import NetworkAbstraction

extension RubyChinaV3 {
    struct Hello: EndpointType {
        static let Path = "hello"

        var baseURL: NSURL { return RubyChinaV3.BaseURL }
        var path: String { return RubyChinaV3.Hello.Path }
        var method: NetworkAbstraction.Method { return .GET }
        var parameters: [String: AnyObject]? { return nil }
        var parameterEncoding: NetworkAbstraction.ParameterEncoding { return .URL }

        typealias T = User

        func buildEntity(json: JSON) -> T? {
            return T(byJSON: json["user"])
        }
    }
}
