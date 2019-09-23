//
//  WebViewController.swift
//  Restaurant
//
//  Created by Nguyen on 9/23/19.
//  Copyright © 2019 Nguyen. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var WebView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - WebView
        let url = URL(string: "https://thetemptation.com.vn/now/")
        let request = URLRequest(url: url!)
        WebView.load(request)
    }

}
