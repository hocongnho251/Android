//
//  SellAllFoodViewController.swift
//  Restaurant
//
//  Created by Nguyen on 9/20/19.
//  Copyright © 2019 Nguyen. All rights reserved.
//

import UIKit

class SellAllFoodViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  

    @IBOutlet weak var tableView: UITableView!
    var imageArray = ["1","2","3","4","5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "FoodDrinkTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "FoodDrinkTableViewCell")
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 80
        self.tableView.sectionHeaderHeight = UITableView.automaticDimension


    }
    // MARK: - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
        
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }

   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodDrinkTableViewCell", for: indexPath) as! FoodDrinkTableViewCell
        cell.imagefood.image = UIImage(named: imageArray[indexPath.row])
        return cell
    }
    
}
