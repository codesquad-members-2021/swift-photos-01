//
//  ViewController.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/22.
//

import UIKit
import Photos

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        requestCollection()
        PHPhotoLibrary.shared().register(self)
    }
    
    func requestCollection() {
        let cameraRoll = PHAssetCollection.fetchAssetCollections(with: .smartAlbum, subtype: .smartAlbumUserLibrary, options: nil)
        guard let object = cameraRoll.firstObject else { return }
        let option = PHFetchOptions()
        option.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false)]
        self.fetchResult = PHAsset.fetchAssets(in: object, options: option)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fetchResult?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: ImageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCell
        let asset = fetchResult.object(at: indexPath.row)

        imageManager.requestImage(for: asset, targetSize: CGSize(width: 80, height: 80), contentMode: .aspectFit, options: nil) { (image, _) in
            cell.photoImageView.image = image
        }
        return cell
    }
}

extension ViewController: PHPhotoLibraryChangeObserver {
    func photoLibraryDidChange(_ changeInstance: PHChange) {
    }
}
