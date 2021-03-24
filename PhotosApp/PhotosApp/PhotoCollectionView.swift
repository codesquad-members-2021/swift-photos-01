//
//  PhotoCollectionView.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/23.
//

import UIKit
import PhotosUI
import Photos

class PhotoCollectionView : UICollectionView{
    
    private let photomanager : PhotoSender
    private let imageManager = PHCachingImageManager()
    
    init(collectionView : UICollectionView, frame: CGRect) {
        let layout = UICollectionViewLayout()
        self.photomanager = PhotoDataManager()
        super.init(frame: frame, collectionViewLayout: layout)
        self.delegate = self
        self.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        self.photomanager = PhotoDataManager()
        super.init(coder: coder)
        self.delegate = self
        self.dataSource = self
    }
}

extension PhotoCollectionView : UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photomanager.sendfetchCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : PhotoCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PhotoCell
        let asset = photomanager.sendPhotoMetaData(index: indexPath)
        cell.setPhotoCellId(localIdentifier: asset.localIdentifier)
        cell.imageView.image = PhotoShowManager().sendImageToCell(asset: asset)
        return cell
    }
}
