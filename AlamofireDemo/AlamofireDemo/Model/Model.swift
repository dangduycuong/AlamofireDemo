//
//  Model.swift
//  AlamofireDemo
//
//  Created by Cuong on 9/16/19.
//  Copyright © 2019 Cuong. All rights reserved.
//

import UIKit

//struct UserInfo: Codable {
//    var users: [User]
//    struct User: Codable {
//        var userId: Int
//        var id: Int
//        var title: String
//        var completed: Bool
//    }
//}

struct UserInfo: Codable {
        var userId: Int
        var id: Int
        var title: String
        var completed: Bool
}


// MARK: Extension JSonDecoder
//extension JSONDecoder {
//    func decodeResponse<T: Decodable>(from response: DataResponse<Data>) -> Result<T> {
//        guard response.error == nil else {
//            print(response.error!)
//            return .failure(response.error!)
//        }
//
//        guard let responseData = response.data else {
//            print("didn't get any data from API")
//            return .failure(BackendError.parsing(reason:
//                "Did not get data in response"))
//        }
//
//        do {
//            let item = try decode(T.self, from: responseData)
//            return .success(item)
//        } catch {
//            print("error trying to decode response")
//            print(error)
//            return .failure(error)
//        }
//    }
//}
