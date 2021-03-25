//
//  DoodleCollectionViewCell.swift
//  PhotosApp
//
//  Created by 양준혁 on 2021/03/25.
//

import UIKit

class DoodleCollectionViewCell: UICollectionViewCell {
    let image: UIImageView

    
    override init(frame: CGRect) {
        image = UIImageView()
        super.init(frame: frame)
        autolayout()
    }
    
    required init?(coder: NSCoder) {
        image = UIImageView()
        super.init(coder: coder)
        autolayout()
    }
    
    func autolayout() {
        image.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.addSubview(image)
    }
}
