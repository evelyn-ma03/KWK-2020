//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Evelyn Ma on 7/27/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    var listOfToRead : [ToDoCD] = []
    /* func createToRead() -> [ToRead] {
        let nonfictionToRead = ToRead()
        nonfictionToRead.description = "Learn Swift"
        nonfictionToRead.important = true
        
        let fictionToRead = ToRead()
       fictionToRead.description = "Walk the Dog"
        // important is set to false by default
        
        return [nonfictionToRead, fictionToRead]
    }
    */
    
    func getToDos() {
        if let accessToCoreData =
            (UIApplication.shared.delegate as?
                AppDelegate)?.persistentContainer.viewContext {
        
        if let dataFromCoreData = try?
            accessToCoreData.fetch(ToDoCD.fetchRequest()) as? [ToDoCD]
        {
            listOfToRead = dataFromCoreData
            tableView.reloadData()
        }
    }
}
    

    override func viewDidLoad() {
        super.viewDidLoad()

       // listOfToRead = createToRead()
        // now listOfToDo will be the array of objects we returned from the createToDo function.
    }

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToRead.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let eachToRead = listOfToRead[indexPath.row]
        
        if let thereIsDescription = eachToRead.descriptionInCD {
            if eachToRead.importantInCD {
                cell.textLabel?.text = "🌟" + thereIsDescription
            } else {
                cell.textLabel?.text = eachToRead.descriptionInCD
            }
        }

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        let eachToRead = listOfToRead[indexPath.row]
    
        performSegue(withIdentifier: "moveToCompletedToDoVC", sender : eachToRead)
    }

    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextAddToVC = segue.destination as?
            AddToDoViewController {
            nextAddToVC.previousToDoTVC = self 
        }
        if let nextCompletedToDoVC = segue.destination as?
            CompletedToDoViewController {
            if let choosenToDo = sender as? ToDoCD {
                nextCompletedToDoVC.selectedToDo = choosenToDo
                nextCompletedToDoVC.previousToDoTVC = self  
            }
        }
    }
    


}
