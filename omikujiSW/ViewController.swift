//
//  ViewController.swift
//  omikujiSW
//
//  Created by Yuki.F on 2015/03/10.
//  Copyright (c) 2015年 Yuki Futagami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func getOmikuji(sender: AnyObject) {
        let results = ["大吉","吉","中吉","凶","大凶"]
        let random = arc4random_uniform(UInt32(results.count))
        self.myLabel.text = results[Int(random)]
        if random == 0{
            self.myLabel.textColor = UIColor.redColor()
        }else{
            self.myLabel.textColor = UIColor.blackColor()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/*
commnad + "=" : fix the label size to suit the words
command + option + 0 : dissapear Utility area
not to show launch screen image
general → app icon and launch images → launch screen file　→ "main"

*/