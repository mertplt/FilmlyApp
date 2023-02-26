//
//  VerticalCollectionViewCell.swift
//  Filmly
//
//  Created by mert polat on 22.02.2023.
//

import UIKit
import SDWebImage
protocol   MovieCellProtocol{
    var posterImage: String{ get }
    var titleText: String{ get }
    var ratingText: String{ get }


    
}

class VerticalCollectionViewCell: UICollectionViewCell,ReuseProtocol,NibProtocol {
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet private weak var movieImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var collection: UICollectionView!

    func configure(data: MovieCellProtocol){
        titleLabel.text = data.titleText
        ratingLabel.text = data.ratingText
        movieImage.sd_setImage(with: URL(string: data.posterImage)!)
        movieImage.layer.cornerRadius = 5
        
    }

}
