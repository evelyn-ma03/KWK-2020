//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Evelyn Ma on 7/27/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var previousToDoTVC = ToDoTableViewController()

    @IBAction func addButtonTapped(_ sender: UIButton) {
        guard let accessToCoreData =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        //this line creates a reference that allows us access to the Core Data.  It uses functions prewritten and stored in AppDelegate.swift.  We use guard let to conditional unwrap the Core Data.
        
        let dataFromCoreData =
            accessToCoreData.persistentContainer.viewContext
        //this line stores the information from Core Data into the object (dataFromCoreData) that we can access.

       
        let newToDo = ToDoCD (context: dataFromCoreData)
        
        //this line creates an empty object that is the same data type as the ToDoCD entry within Core Data.  This means this object will have all the properties of ToDoCD.

        newToDo.descriptionInCD = descriptionInput.text
        newToDo.importantInCD = switchInput.isOn
        //these lines give the object information from the user input
       
        accessToCoreData.saveContext()
        //This is like clicking "save"! Our new object is now safe in Core Data!

        navigationController?.popViewController(animated: true)
        //this send the user back to the Table View Controller

        /* let newToRead = ToRead()
        if let checkForInput = descriptionInput.text {
            newToRead.description = checkForInput
            newToRead.important = switchInput.isOn
        }
        previousToDoTVC.listOfToRead.append(newToRead)
        previousToDoTVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
         */
    }
    
    @IBOutlet weak var descriptionInput: UITextField!
    
    @IBOutlet weak var switchInput: UISwitch!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
