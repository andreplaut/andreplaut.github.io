//
//  MealTableViewController.swift
//  FoodTracker
//
//  Created by Andre Plaut on 3/25/16.
//  Copyright © 2016 Andre Plaut. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var meals = [Meal]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the sample data. 
        loadSampleMeals()
    }
    
    func loadSampleMeals() {
        
        let photo1 = UIImage(named: "meal1")!
        let meal1 = Meal(name: "Caprese Salad", photo: photo1, rating: 4)!
            
        let photo2 = UIImage(named: "meal2")!
        let meal2 = Meal(name: "Chicken and Potatoes", photo: photo2, rating: 5)!
            
        let photo3 = UIImage(named: "meal3")!
        let meal3 = Meal(name: "Pasta with Meatballs", photo: photo3, rating: 3)!
            
        meals += [meal1, meal2, meal3]
            
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "MealTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MealTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let meal = meals[indexPath.row]
        cell.nameLabel.text = meal.name
        cell.photoImageView.image = meal.photo
        cell.ratingControl.rating = meal.rating

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.sourceViewController as?
            MealViewController, meal = sourceViewController.meal {
            // Add a new meal. 
            let newIndexPath = NSIndexPath(forRow: meals.count, inSection: 0)
            meals.append(meal)
            tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
        }
    }
    
    
}
