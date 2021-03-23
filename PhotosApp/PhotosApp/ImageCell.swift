//
//  ImageCell.swift
//  PhotosApp
//
//  Created by 양준혁 on 2021/03/23.
//

import UIKit

class ImageCell: UICollectionViewCell {
    @IBOutlet var photoImageView: UIImageView!
        
    func setUpImage(image: UIImage) {
        self.photoImageView.image = image
    }
}
