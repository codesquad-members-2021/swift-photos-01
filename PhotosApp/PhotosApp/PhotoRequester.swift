//
//  PhotoShowManager.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/23.
//

import PhotosUI

class PhotoRequester : PHCachingImageManager {
    func sendImageToCell(asset : PHAsset) -> UIImage{
        var sendimage : UIImage!
        self.requestImage(for: asset, targetSize: CGSize(width: 100, height: 100), contentMode: .aspectFill, options: nil, resultHandler: {image, _ in
                sendimage = image
        })
        return sendimage
    }
}
