//
//  PhotoCollectionView.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/23.
//

import UIKit

class PhotoCollectionView : UICollectionView{
    
    init(collectionView : UICollectionView, frame: CGRect) {
        let layout = UICollectionViewLayout()
        super.init(frame: frame, collectionViewLayout: layout)
        self.delegate = self
        self.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.delegate = self
        self.dataSource = self
    }
}

extension PhotoCollectionView : UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        let randomColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        cell.backgroundColor = randomColor
        return cell
    }
}
