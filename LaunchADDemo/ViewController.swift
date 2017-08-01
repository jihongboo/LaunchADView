//
//  ViewController.swift
//  LaunchADDemo
//
//  Created by xingwu  on 2016/12/13.
//  Copyright © 2016年 LaunchADDemo. All rights reserved.
//

import UIKit
import LaunchADView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //  请勿将LaunchADView代码放入AppDelegate、UITabbarController中，因为这些类的初始化代码是异步运行的，可能会出现界面早于启动页出现的情况。
        
        //  用于加载启动页数据，可放到网络请求的回调中，图片异步缓存
        LaunchADView.setValue(imgURL: "http://cdn.duitang.com/uploads/item/201408/27/20140827062302_ymAJe.jpeg", webURL: "https://www.baidu.com", showTime: 3)

        //  用于显示启动页。若启动数据更新，则将在下次启动后展示新的启动页
        LaunchADView.show { (url) in
            let vc = WebView()
            vc.url = url
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        print("ffasf")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

