//
//  ViewController.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/22.
//

import UIKit

class ViewController: UIViewController {
    let collView : PhotoCollectionView = PhotoCollectionView()
    let jsonManager : JSONDecoderManager = JSONDecoderManager()
    var tempimage : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tempimage = ImageDownloader.imageDownload()
    }
}
