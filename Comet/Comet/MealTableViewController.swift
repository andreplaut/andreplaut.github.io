//
//  WeekTableViewController.swift
//  FoodTracker
//
//  Created by Andre Plaut on 3/25/16.
//  Copyright © 2016 Andre Plaut. All rights reserved.
//

import UIKit

class WeekTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var weeks = [Week]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the sample data.
        loadSampleWeeks()
    }
    
    func loadSampleWeeks() {
        
        let week1 = Week(accomplishmentOne: "Work out", accomplishmentTwo: "Eat less", accomplishmentThree: "Read")!
        
        let week2 = Week(accomplishmentOne: "Learn French", accomplishmentTwo: "Watch a Movie", accomplishmentThree: "Call Mom")!
        
        let week3 = Week(accomplishmentOne: "Call Bro", accomplishmentTwo: "File Taxes", accomplishmentThree: "Clean Apartment")!
        
        weeks += [week1, week2, week3]
        
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
        return weeks.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "WeekTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! WeekTableViewCell
        
        // Fetches the appropriate week for the data source layout.
        let week = weeks[indexPath.row]
        cell.accomplishmentOneLabel.text = week.accomplishmentOne
        cell.accomplishmentTwoLabel.text = week.accomplishmentTwo
        cell.accomplishmentThreeLabel.text = week.accomplishmentThree
        
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
    
    /* @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
     if let sourceViewController = sender.sourceViewController as?
     MealViewController, meal = sourceViewController.meal {
     // Add a new meal.
     let newIndexPath = NSIndexPath(forRow: meals.count, inSection: 0)
     meals.append(meal)
     tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
     }*/
}

