//
//  Landmark.swift
//  QuizMiniProject
//
//  Created by Evelyn Ma on 7/23/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class Landmark: UIViewController {
    @IBOutlet weak var commentary3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    var empirestate = "nyc's jewel 🤍"
    @IBAction func empire(_ sender: Any) {
        commentary3.text = empirestate
    }
    
    var met = "you could spend ALL day here!"
    @IBAction func metButton(_ sender: Any) {
        commentary3.text = met
    }
    var statue = "typical tourist spot 😝"
    @IBAction func statueButton(_ sender: Any) {
        commentary3.text = statue
    }
    var park = "great for long walks in nature 🌿"
    @IBAction func parkButton(_ sender: Any) {
        commentary3.text = park
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
