//
//  JournalEntryViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Stella Oh on 7/28/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class JournalEntryViewController: UIViewController {

    var previousEntryTVC = JournalEntryTableViewController()

    @IBOutlet weak var entryType: UITextField!
    @IBOutlet weak var entry: UITextView!
        
    @IBAction func entryDone(_ sender: UIButton) {
        let viewYourResponse = entryType.text
        entry.text = viewYourResponse
        
        let newEntry = JournalEntry()

            if let checkForInput = entryType.text {
            newEntry.response = checkForInput
        
            }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //border of entry
        var borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        entry.layer.borderWidth = 0.5
        entry.layer.borderColor = borderColor.cgColor
        entry.layer.cornerRadius = 5.0
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
