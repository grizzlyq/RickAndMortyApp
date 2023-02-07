//
//  File.swift
//  Rick_And_Morty
//
//  Created by Дмитрий on 07.02.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
 
