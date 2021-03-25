//
//  DoodleCollectionViewCell.swift
//  PhotosApp
//
//  Created by 양준혁 on 2021/03/25.
//

import UIKit

class DoodleCollectionViewCell: UICollectionViewCell {
    let imageView: UIImageView

    
    override init(frame: CGRect) {
        imageView = UIImageView()
        super.init(frame: frame)
        autolayout() 
    }
    
    required init?(coder: NSCoder) {
        imageView = UIImageView()
        super.init(coder: coder)
        autolayout()
    }
    
    func autolayout() {
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.addSubview(imageView)
    }
}
