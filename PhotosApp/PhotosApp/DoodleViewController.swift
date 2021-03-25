//
//  DoodleViewController.swift
//  PhotosApp
//
//  Created by 양준혁 on 2021/03/25.
//

import UIKit

private let reuseIdentifier = "Cell"

class DoodleViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let closeButton: UIBarButtonItem = {
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(closeButtonPressed))
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView.backgroundColor = .darkGray
        self.navigationItem.rightBarButtonItem = closeButton
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "doodleCell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 110, height: 50)
    }
    
    
    @objc func closeButtonPressed() {
        self.dismiss(animated: true, completion: nil)
    }
}

