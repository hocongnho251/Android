//
//  FBViewController.swift
//  Restaurant
//
//  Created by Nguyen on 9/23/19.
//  Copyright © 2019 Nguyen. All rights reserved.
//

import UIKit
import WebKit

class FBViewController: UIViewController {
     // MARK: - IBOutlet
    @IBOutlet weak var WebView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
          // MARK: - WebView
        let url = URL(string: "https://www.facebook.com/thetemptationrestaurant/?__tn__=%2Cd%2CP-R&eid=ARB_MJLD_7ryHqb3j4ltP0SKhRQR_1D-vK6cw1hjPUMy8eQTMEsjlJEpd9VyCQR9UjzsiCMpGnu2rXf1")
        let request = URLRequest(url: url!)
        WebView.load(request)

    }
    


}
