//
//  PhotoSender.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/23.
//

import Photos

protocol PhotoSender {
    func sendPhotoMetaData(index : IndexPath) -> PHAsset
    func sendfetchCount() -> Int
}
