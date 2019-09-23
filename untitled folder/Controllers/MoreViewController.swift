//
//  MoreViewController.swift
//  Restaurant
//
//  Created by Nguyen on 9/19/19.
//  Copyright © 2019 Nguyen. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
     // MARK: - ItemTabbar
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tabBarItem = UITabBarItem(title: "More", image: UIImage(named: "more"), tag: 3)
    }
     // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variable
    var a1 = ["📗 History"]
    var a2 = ["☑️ Rate this app","📑 Share this app","📓 Show barcode","📨 Feedback","⚠️ Report issua or bugs"]
    var a3 = ["🌎 language","❕Version 1.0.1"]
    var a4 = ["📉 episquare"]
    var a: [[String]] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "MoreTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "MoreTableViewCell")
        a = [a1,a2,a3,a4]
    }
    

    
    // MARK: - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return a.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return a[section].count
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoreTableViewCell", for: indexPath) as! MoreTableViewCell
        cell.morelabel?.text = a[indexPath.section][indexPath.row]
        return cell
    }

 

}
