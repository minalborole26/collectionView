//
//  ViewController.swift
//  collectionView
//
//  Created by minal borole on 07/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    var imgArray: [UIImage] = [#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl"),#imageLiteral(resourceName: "girl")]
    var nameArray = ["girl1","girl2","girl3","girl1","girl2","girl3","girl1","girl2","girl3","girl1","girl2","girl3","girl1","girl2","girl3","girl1","girl2","girl3","girl1","girl2","girl3","girl1","girl2","girl3","girl1","girl2","girl3","girl1"]

    @IBOutlet weak var collectionView1: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }


}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.imgView.image = imgArray[indexPath.row]
        cell.nameLbl.text = nameArray[indexPath.row]
        
        
        
        return cell
    }
    
    
}
extension ViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView1.bounds.width
        return CGSize(width: collectionWidth/4-1, height: collectionWidth/4-1)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
  
    
}
