//
//  RestaurantViewController.swift
//  Restaurant
//
//  Created by Nguyen on 9/19/19.
//  Copyright © 2019 Nguyen. All rights reserved.
//

import UIKit

class RestaurantViewController: UIViewController {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tabBarItem = UITabBarItem(title: "Restaurant", image: UIImage(named: "restaurant"), tag: 2)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
       // MARK: - Action

    @IBAction func fbaction(_ sender: Any) {
        let viewfb = storyboard?.instantiateViewController(withIdentifier: "fb") as! FBViewController
        self.navigationController?.pushViewController(viewfb, animated: true)
    }
    
    @IBAction func webaction(_ sender: Any) {
        let viewweb = storyboard?.instantiateViewController(withIdentifier: "web") as! WebViewController
        self.navigationController?.pushViewController(viewweb, animated: true)
    }
    
}
