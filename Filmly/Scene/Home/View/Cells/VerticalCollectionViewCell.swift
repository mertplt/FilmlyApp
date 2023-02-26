//
//  VerticalCollectionViewCell.swift
//  Filmly
//
//  Created by mert polat on 22.02.2023.
//

import UIKit

class VerticalCollectionViewCell: UICollectionViewCell,ReuseProtocol,NibProtocol {

    @IBOutlet private weak var movieImage: UIImageView!
    @IBOutlet  weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
