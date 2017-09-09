//
//  ViewController.swift
//  KCProgressButton
//
//  Created by 宋 奎熹 on 2017/9/9.
//  Copyright © 2017年 宋 奎熹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var kcButton: KCProgressButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.addTarget(self, action: #selector(valueChanged), for: .valueChanged)
        
        /// ❗️该 Button 的 Type 要设为 Custom❗️
        /// 如：let button = KCProgressButton(type: .custom)
        /// 设置按钮初始标题
        kcButton.setTitle("下载", for: .normal)
        /// 设置按钮下载时的显示格式
        kcButton.valueFormatter = {
            return String(format: "已下载 %d%%", Int($0 * 100))
        }
        kcButton.titleLabel?.font = UIFont(name: "PingFangSC-Regular", size: 15.0)
        /// 设置按钮下载完成后的标题
        kcButton.finishDownloadTitle = "完成"
        /// 设置按钮边框宽度
        kcButton.borderWidth = 3.0
        /// 按钮其它设置
        kcButton.layer.cornerRadius = 3.0
        kcButton.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc func valueChanged() {
        kcButton.setProgress(slider.value)
    }
    
}

