//
//  PhotoLibraryObserver.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/24.
//

import Photos

class PhotoLibraryObserver : NSObject, PHPhotoLibraryChangeObserver {
    
    override init() {
        super.init()
        PHPhotoLibrary.shared().register(self)
    }
    
    func photoLibraryDidChange(_ changeInstance: PHChange) {
        
    }
}
