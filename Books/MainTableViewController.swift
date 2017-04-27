//
//  MainTableViewController.swift
//  Books
//
//  Created by SDS-007 on 2017. 4. 27..
//  Copyright © 2017년 NHIT. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController, LoginProtocol {
    
    var myArr:[[String:String]] = [[String:String]]()

    @IBAction func openLoginScene(_ sender: Any) {
        
        guard let loginVC = storyboard?.instantiateViewController(withIdentifier: "loginview") as? LoginViewController else {
            return
        }
        loginVC.delegate = self
        self.present(loginVC, animated: true, completion: nil)
    }
    
    func completedLogin(name: String) {
        print(name)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
//        myArr.append("홍길동")
//        myArr.append("이순신")
//        myArr.append("강감찬")
        
        let dict1:[String:String] = ["name":"홍길동", "phone":"010-1234-5678"]
        let dict2:[String:String] = ["name":"이순신", "phone":"010-3422-2222"]
        let dict3:[String:String] = ["name":"강감찬", "phone":"010-5234-3312"]
        
        myArr.append(dict1)
        myArr.append(dict2)
        myArr.append(dict3)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myArr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let dict = myArr[indexPath.row]
        
        cell.textLabel?.text = dict["name"]
        cell.detailTextLabel?.text = dict["phone"]
        
        print("Row:\(indexPath.row)")
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
