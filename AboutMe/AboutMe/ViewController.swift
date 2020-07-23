//
//  ViewController.swift
//  AboutMe
//
//  Created by Evelyn Ma on 7/22/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFact: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
var funFactsAboutMe1 = "learn about neuroscience👩🏻‍🔬"
    @IBAction func pressButton(_ sender: UIButton) {
        funFact.text = funFactsAboutMe1
    }
 var funFactsAboutMe2 = "drink bubble tea!"
    @IBAction func pressButton2(_ sender: Any) {
        funFact.text = funFactsAboutMe2
    }
    
  var funFactsAboutMe3 = "travel ✈️"
    @IBAction func pressButton3(_ sender: Any) {
        funFact.text = funFactsAboutMe3
    }
 var funFactsAboutMe4 = "read books 📚"
    @IBAction func pressButton4(_ sender: Any) {
        funFact.text = funFactsAboutMe4
    }
}
    


