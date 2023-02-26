//
//  UIImageView+Extension.swift
//  Filmly
//
//  Created by mert polat on 22.02.2023.
//

import Foundation
import UIKit
import SDWebImage

extension UIImageView {
    func loadURL(url: String) {
        if let url = URL(string: url) {
            sd_setImage(with: url)
        }
    }
}
