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
    let layout: UICollectionViewLayout = UICollectionViewFlowLayout.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doodleViewController = DoodleViewController.init(collectionViewLayout: layout)
        doodleNavigationController = UINavigationController(rootViewController: doodleViewController)
    }
    
    @IBAction func pressButton(_ sender: Any) {
        self.present(doodleNavigationController, animated: true, completion: nil)
    }
}
