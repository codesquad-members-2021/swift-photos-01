//
//  PhotoCell.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/23.
//

import Photos

class PhotoDataManager : PhotoSender{
    private var allPhotos : PHFetchResult<PHAsset>!
    
    init() {
        self.allPhotos = PHAsset.fetchAssets(with: nil)
    }
    
    func sendPhotoMetaData(index : IndexPath) -> PHAsset{
        return self.allPhotos.object(at: index.row)
    }
    
    func sendfetchCount() -> Int{
        return allPhotos.count
    }
}
