//
//  PhotoCollectionView.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/23.
//

import UIKit

class PhotoCollectionView : UICollectionView{
    private let datasourceManager : CollectionViewDataManager
    private let photolibraryObserver : PhotoLibraryObserver
    
    override init(frame: CGRect, collectionViewLayout: UICollectionViewLayout) {
        datasourceManager = CollectionViewDataManager()
        photolibraryObserver = PhotoLibraryObserver()
        super.init(frame: frame, collectionViewLayout: UICollectionViewLayout())
        self.delegate = datasourceManager
        self.dataSource = datasourceManager
    }
    
    required init?(coder: NSCoder) {
        datasourceManager = CollectionViewDataManager()
        photolibraryObserver = PhotoLibraryObserver()
        super.init(coder: coder)
        self.delegate = datasourceManager
        self.dataSource = datasourceManager
    }
}
