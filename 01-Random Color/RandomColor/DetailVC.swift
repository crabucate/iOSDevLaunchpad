//
//  DetailVC.swift
//  RandomColor
//
//  Created by Felix Leitenberger on 07.04.20.
//  Copyright © 2020 Felix Leitenberger. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Selected Color"
        view.backgroundColor = color ?? .blue
    }
}
