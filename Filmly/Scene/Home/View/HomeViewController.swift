//
//  ViewController.swift
//  Filmly
//
//  Created by mert polat on 22.02.2023.
//

import UIKit

class  HomeViewController: UIViewController {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    let viewModel = HomeViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionSetup()
        viewModelConfiguration()
        
        
    }
    
    fileprivate func collectionSetup(){
        collectionView.registerCell(type: VerticalCollectionViewCell.self)
    }
    
    fileprivate func viewModelConfiguration(){
        
        viewModel.getCatagoryItems()
        viewModel.errorCallBack = { [weak self] errorMesage in
            print("error: \(errorMesage)")
        }
        viewModel.successCallBack = { [weak self] in
            self?.collectionView.reloadData()
            
        }
    }


}
extension HomeViewController:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VerticalCollectionViewCell", for: indexPath) as! VerticalCollectionViewCell
        
        if let movie = viewModel.movie?.results?[indexPath.item]{
            cell.configure(data: movie)
        }
        return cell
    }

        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 327 / 375, height: 120)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        CGSize(width: collectionView.frame.width, height: 365)

    }
    
    
}
