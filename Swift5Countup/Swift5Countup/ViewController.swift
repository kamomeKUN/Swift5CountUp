//
//  ViewController.swift
//  Swift5Countup
//
//  Created by kamomeKUN on 2020/02/10.
// Copyright ©︎ 2020 kamomeKUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CountUpLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ラベルに初期値を設定
        CountUpLabel.text = "0"
    }

    
    @IBAction func plus(_ sender: Any) {
        // カウントアップしてラベルに反映
        count += 1
        CountUpLabel.text = "\(count)"
        // 数値 >= 10 の時に文字色を黄色にする
        if count >= 10 {
            changeColorYellow()
        } else if count > 0 {
            changeColorWhite()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        // カウントダウンしてラベルに反映
        count -= 1
        CountUpLabel.text = "\(count)"
        // 数値 <= 0 の時に文字色を黄色にする
        if count <= 0 {
            changeColorYellow()
        } else if count <= 10{
            changeColorWhite()
        }
    }
    
    // 文字色 => 黄色
    func changeColorYellow() {
        CountUpLabel.textColor = .yellow
    }
    
    // 文字色 => 白色
    func changeColorWhite() {
        CountUpLabel.textColor = .white
    }
    
}

