//
//  WhatWillIEat.swift
//  QuizMiniProject
//
//  Created by Evelyn Ma on 7/23/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class WhatWillIEat: UIViewController {

    @IBOutlet weak var commentary2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    var pancakes = "I recommend Big Daddy's for amazing Oreo pancakes!"
    @IBAction func pancakesButton(_ sender: Any) {
        commentary2.text = pancakes
    }
    
    var avotoast = "can be overpriced sometimes, but still delicious!"
    @IBAction func avoButton(_ sender: Any) {
        commentary2.text = avotoast
    }
    
    var bagels = "new york city classic!"
    @IBAction func bagelsButton(_ sender: Any) {
        commentary2.text = bagels
    }
    
    var dimsum = "next stop: chinatown!"
    @IBAction func dimSumButton(_ sender: Any) {
        commentary2.text = dimsum
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
