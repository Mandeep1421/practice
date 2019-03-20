//
//  CustomerDetailsViewController.swift
//  Demo
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    var e:String?
    var x:String?
    var u = user()
    @IBOutlet weak var Table1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Table1.delegate = self
        self.Table1.dataSource = self
     if  e == x
     {
        print(e!)
        }
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return u.Users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! TableViewCell
        
        if let u1 = u.Users[e!]
        {
            userCell.Fname.text = u1.fullName
            print(u1.fullName)
            
        }
        return userCell
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
