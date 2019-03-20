//
//  ViewController.swift
//  Demo
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblUser: UITextField!
    @IBOutlet weak var lblPass: UITextField!
    @IBOutlet weak var btnRemember: UISwitch!
    let userDefault = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let uid = userDefault.string(forKey: "userId")
        {
            lblUser.text = uid
            btnRemember.isOn = true
        }
        if let pass = userDefault.string(forKey: "Password")
        {
            lblPass.text = pass
            btnRemember.isOn = true
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func swtch(_ sender: UISwitch)
    {
        
    }
    @IBAction func btnLogin(_ sender: UIButton)
    {
        if (lblUser.text == "Mandeep" && lblPass.text == "123")
        {
            
            if(btnRemember.isOn)
            {
                userDefault.set(lblUser.text,forKey: "userId")
                userDefault.set(lblPass.text, forKey: "Password")
            }
            else{
                userDefault.removeObject(forKey: "userId")
                userDefault.removeObject(forKey: "Password")
            }
            
            let sp = UIStoryboard(name: "Main", bundle: nil)
            let LionVC = sp.instantiateViewController(withIdentifier: "Mandy") as! TableViewController
            LionVC.x = lblUser.text
            self.navigationController?.pushViewController(LionVC, animated: true)
        }
        
        else
        {
                let alert = UIAlertController(title: "Invaild", message: "Invalid Login or Password", preferredStyle: .alert)
                
                let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(actionDefault)
                self.present(alert, animated: true, completion: nil)
    
            }
        }

}

