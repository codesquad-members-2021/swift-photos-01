//
//  PhotoCollectionView.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/23.
//

import UIKit

class PhotoCollectionView : UICollectionView{
    private let datasourceManager : CollectionViewDataManager
    
    init(collectionView : UICollectionView, frame: CGRect) {
        datasourceManager = CollectionViewDataManager()
        let layout = UICollectionViewLayout()
        super.init(frame: frame, collectionViewLayout: layout)
        self.delegate = datasourceManager
        self.dataSource = datasourceManager
    }
    
    required init?(coder: NSCoder) {
        datasourceManager = CollectionViewDataManager()
        super.init(coder: coder)
        self.delegate = datasourceManager
        self.dataSource = datasourceManager
    }
}
