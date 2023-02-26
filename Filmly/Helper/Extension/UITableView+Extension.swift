//
//  UITableView+Extension.swift
//  Filmly
//
//  Created by mert polat on 22.02.2023.
//

import UIKit

extension UITableView {
    func registerCell<T: NibProtocol & ReuseProtocol>(type: T.Type) {
        register(type.nib,
                 forCellReuseIdentifier: type.reuseIdentifier)
    }

    func dequeueCell<T: ReuseProtocol>(for indexPath: IndexPath) -> T {
        let dequeued = dequeueReusableCell(withIdentifier: T.reuseIdentifier) as! T
        return dequeued
    }
}
