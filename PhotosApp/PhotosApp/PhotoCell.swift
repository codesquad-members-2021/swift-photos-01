//
//  PhotoCells.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/23.
//

import UIKit

class PhotoCell : UICollectionViewCell{
    @IBOutlet weak var imageView: UIImageView!
    private var representedAssetIdentifier : String!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = .white
    }
}
