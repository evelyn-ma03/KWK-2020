//
//  Lunch.swift
//  QuizMiniProject
//
//  Created by Evelyn Ma on 7/23/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class Lunch: UIViewController {

    @IBOutlet weak var commentary4: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    var pasta = "I recommend San Marzano in East Village!🍝"
    @IBAction func pastaButton(_ sender: Any) {
        commentary4.text = pasta
    }
    var pizza = "Joe's Pizza is a hot tourist spot!🍕"
    @IBAction func pizzaButton(_ sender: Any) {
        commentary4.text = pizza
    }
    var ramen = "I recommend Totto Ramen in Midtown!🍜"
    @IBAction func ramenButton(_ sender: Any) {
        commentary4.text = ramen
    }
    var sushi = "KazuNori in Flatiron has great handrolls!🍙"
    @IBAction func sushiButton(_ sender: Any) {
        commentary4.text = sushi
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
