//
//  MovieDetailViewController.swift
//  Starter2
//
//  Created by kyaw htet aung on 2021/01/24.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var MovieCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        MovieCollectionView.dataSource = self
        MovieCollectionView.delegate = self
        
        MovieCollectionView.register(UINib(nibName: String(describing: Sample1CollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: Sample1CollectionViewCell.self))
        
    }
    

}

extension MovieDetailViewController :UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: Sample1CollectionViewCell.self), for: indexPath) as? Sample1CollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    
    
}
extension MovieDetailViewController :UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     
        return CGSize(width: collectionView.frame.width, height: 50)
        
            }
}
