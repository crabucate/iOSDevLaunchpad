//
//  ColorTableVC.swift
//  RandomColor
//
//  Created by Felix Leitenberger on 07.04.20.
//  Copyright © 2020 Felix Leitenberger. All rights reserved.
//

import UIKit

class ColorTableVC: UIViewController {
    
    var colors = [UIColor]()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Colors"
        
        for _ in 1...100 {
            colors.append(UIColor.randomColor())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as? DetailVC
        destVC?.color = sender as? UIColor
    }
}


extension ColorTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.ColorCell.rawValue) else { return UITableViewCell()}
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: Segues.toDetail.rawValue, sender: colors[indexPath.row])
    }
}

