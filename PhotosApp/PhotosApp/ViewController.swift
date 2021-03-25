//
//  ViewController.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/22.
//

import UIKit

class ViewController: UIViewController {
    var doodleViewController: DoodleViewController!
    var doodleNavigationController: UINavigationController!
    let collView : PhotoCollectionView = PhotoCollectionView()
    let jsonManager : JSONDecoderManager = JSONDecoderManager()
    var tempimage : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doodleViewController = DoodleViewController()
        doodleNavigationController = UINavigationController(rootViewController: doodleViewController)
        tempimage = ImageDownloader.imageDownload()
        
    }
    @IBAction func pressButton(_ sender: Any) {
        navigationController?.pushViewController(doodleViewController, animated: true)
    }
}
