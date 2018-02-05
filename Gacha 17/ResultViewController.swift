//
//  ResultViewController.swift
//  Gacha 17
//
//  Created by 小西夏穂 on 2017/08/09.
//  Copyright © 2017年 小西夏穂. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    //一番後ろの背景画像
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    //モンスターを表示する画像
    @IBOutlet var monsterImageView: UIImageView!
    //モンスター画像を保存しておく配列
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //0~9の間でランダムに数字を発生させる
        
        number = Int(arc4random_uniform(10))
        
        
        
        if number == 9 {
            //激レアモンスター
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        } else if number > 3 {
            //レアモンスター
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
        } else {
            //ノーマルモンスター
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
