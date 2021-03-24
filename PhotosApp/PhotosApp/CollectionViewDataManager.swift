//
//  CollectionViewDataManager.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/24.
//

import UIKit

class CollectionViewDataManager : NSObject {
    private let photomanager : PhotoDataManager
    
    override init(){
        photomanager = PhotoDataManager()
    }
}

extension CollectionViewDataManager : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photomanager.sendfetchCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : PhotoCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PhotoCell
        let asset = photomanager.sendPhotoMetaData(index: indexPath)
        cell.imageView.image = PhotoShowManager().sendImageToCell(asset: asset)
        return cell
    }
}
