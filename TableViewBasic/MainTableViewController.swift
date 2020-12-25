//
//  MainTableViewController.swift
//  TableViewBasic
//
//  Created by binyu on 2020/12/24.
//

import UIKit
import SafariServices

class MainTableViewController: UITableViewController {
    var workOutTopic = [
                        WorkOut(topic: "ChestWorkOut", intro:"大H教你打造厚實胸肌" , videophoto: "ChestWorkOut.png", Videourl:URL(string: "https://www.youtube.com/watch?v=nKjAD5hN3Go")!),
                        WorkOut(topic: "BackWorkOut", intro: "大H教你打造健體黃金倒三角", videophoto: "BackWorkOut.png", Videourl: URL(string: "https://www.youtube.com/watch?v=7VNXgyu4s6g&t=584s")!),
                        WorkOut(topic: "ShoulderWorkOut", intro: "大H教你成為有肩膀的男人", videophoto: "ShoulderWorkOut.png", Videourl: URL(string: "https://www.youtube.com/watch?v=wIgkWDK9DwU")!),
                        WorkOut(topic: "ArmWorkOut", intro: "大H教你打造男人的強健臂彎", videophoto: "ArmWorkOut.png", Videourl: URL(string: "https://www.youtube.com/watch?v=wq-CoEvi8go")!),
                        WorkOut(topic: "LegWorkOut", intro: "大H教你如何練出健體腿", videophoto: "LegWorkOut.png", Videourl: URL(string: "https://www.youtube.com/watch?v=_gjkeqoUsGE")!),
                        WorkOut(topic: "CornWorkOut", intro: "大H教你打造立體冰塊腹肌", videophoto: "CornWorkOut.png", Videourl: URL(string: "https://www.youtube.com/watch?v=Fs1MMJ3X4Rc&t=492s")!) ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 180
        tableView.estimatedRowHeight = 0

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return workOutTopic.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkOutCell", for: indexPath) as! VideoTableViewCell
        
        let body = workOutTopic[indexPath.row]
        cell.titleLabel.text = body.topic
        cell.subTitleLabel.text = body.intro
        cell.videoImageView.image = UIImage(named:body.videophoto)
        
        // Configure the cell...

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let indexPath =  self.tableView.indexPathForSelectedRow {
            let workout = workOutTopic[indexPath.row]
            let url = workout.Videourl
            let safariVC = SFSafariViewController(url: url)
            
            present(safariVC, animated: true, completion: nil)
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
