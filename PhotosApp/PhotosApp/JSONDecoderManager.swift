//
//  JSONDecoderManager.swift
//  PhotosApp
//
//  Created by 양준혁 on 2021/03/24.
//

import UIKit

class JSONDecoderManager {
    private let JSONDeocde: JSONDecoder
    private let dataAsset: NSDataAsset?
    
    init(fileName: String) {
        JSONDeocde = JSONDecoder()
        dataAsset = NSDataAsset(name: fileName) ?? nil
    }
    
    func decode() -> [GoogleThumbnail]? {
        do {
            return try JSONDeocde.decode([GoogleThumbnail].self, from: dataAsset!.data)
        } catch {
            return nil
        }
    }
}
