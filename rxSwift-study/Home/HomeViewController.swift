//
//  ViewController.swift
//  rxSwift-study
//
//  Created by Sangyeol Kang on 2018. 3. 21..
//  Copyright © 2018년 estsoft. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class HomeViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension HomeViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let homeCell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as? HomeTableViewCell {
            homeCell.titleLabel.text = "Day 1"
            return homeCell
        } else {
            return UITableViewCell()
        }
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            let dayOneVC = DayOneViewController()
            self.navigationController?.pushViewController(dayOneVC, animated: true)
        }
        
    }
    
}


