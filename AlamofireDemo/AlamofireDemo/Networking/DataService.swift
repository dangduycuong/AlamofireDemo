//
//  DataService.swift
//  AlamofireDemo
//
//  Created by Cuong on 9/16/19.
//  Copyright © 2019 Cuong. All rights reserved.
//

import UIKit

import Alamofire

class DataServices {
    
    static let sharedInstance: DataServices = DataServices()
    
    func getdata(completedHandle: @escaping([UserInfo]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {return}
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON { response in
            do {
                let recivedData = try JSONDecoder().decode([UserInfo].self, from: response.data!)
                DispatchQueue.main.async {
                    completedHandle(recivedData)
                }
            } catch {
                print(error)
            }
        }
        
    }
}
