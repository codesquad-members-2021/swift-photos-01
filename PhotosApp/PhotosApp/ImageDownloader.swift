//
//  GoogleThumbnail.swift
//  PhotosApp
//
//  Created by 양준혁 on 2021/03/24.
//

import UIKit

struct ImageDownloader {
    static func imageDownload() -> [UIImage]{
        let jsonManager : JSONDecoderManager = JSONDecoderManager()
        var tempImages : [UIImage] = []
        DispatchQueue.global().async {
            for i in 0..<jsonManager.translateJSONtoSwift().count{
                let url = URL(string: jsonManager.translateJSONtoSwift()[i]["image"] as! String)
                let data = try? Data(contentsOf: url!)
                DispatchQueue.global().async {
                    tempImages.append(UIImage(data: data!)!)
                }
            }
        }
        return tempImages
    }
}
