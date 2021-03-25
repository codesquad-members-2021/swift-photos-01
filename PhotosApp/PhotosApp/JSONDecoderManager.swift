//
//  JSONDecoderManager.swift
//  PhotosApp
//
//  Created by 양준혁 on 2021/03/24.
//

import Foundation

class JSONDecoderManager {
    func translateJSONtoSwift() -> [[String : Any]]{
        var jsonData : [[String : Any]]!
        let path = Bundle.main.path(forResource: "doodle", ofType: "json")
        if let data = try? String(contentsOfFile: path!).data(using: .utf8){
            let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [[String : Any]]
            jsonData = json
        }
        return jsonData
    }
}
