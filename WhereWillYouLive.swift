//
//  WhereWillYouLive.swift
//  QuizMiniProject
//
//  Created by Evelyn Ma on 7/23/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class WhereWillYouLive: UIViewController {

   
    
    @IBOutlet weak var NQButton: UIButton!
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var commentary: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
var sohoComment = "you can do a lot of shopping here!"
    @IBAction func sohoButton(_ sender: UIButton) {
        commentary.text = sohoComment
    }
var chelseaComment = "a quaint & lovely neighborhood :)"
    @IBAction func chelseaButton(_ sender: UIButton) {
         commentary.text = chelseaComment
    }
var midtownComment = "you'll have a great view of the skyscrapers!"
    @IBAction func midtownButton(_ sender: UIButton) {
         commentary.text = midtownComment
    }
    
var wbComment = "hip & trendy!"
    @IBAction func wbButton(_ sender: UIButton) {
         commentary.text = wbComment
    }
    
    
    
    /*`
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
