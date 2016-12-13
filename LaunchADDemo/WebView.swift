//
//  WebView.swift
//  LaunchADDemo
//
//  Created by xingwu  on 2016/12/13.
//  Copyright © 2016年 LaunchADDemo. All rights reserved.
//

import UIKit

class WebView: UIViewController {
    @IBOutlet weak var web: UIWebView!

    var url: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        web.loadRequest(URLRequest.init(url: URL.init(string: url)!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
