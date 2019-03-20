//
//  SignUpViewController.swift
//  Demo
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController
{
  let u = user()
    var reg:Bool?
    @IBOutlet weak var lblFullName: UITextField!
    @IBOutlet weak var lblEmail: UITextField!
    @IBOutlet weak var lblPassWord: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnsSignUp(_ sender: UIButton)
    {
        let u1 = user(name: lblFullName.text!, email: lblEmail.text!, pass: lblPassWord.text!)
       reg = u.registration(userid: lblEmail.text!, c: u1)
        
        if (reg==true)
        {
            let alert = UIAlertController(title: "Success", message: "Regitration success", preferredStyle: .alert)
            
            let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(actionDefault)
            self.present(alert, animated: true, completion: nil)
            perform(#selector(showLogin), with: nil, afterDelay: 2)
            let sp = UIStoryboard(name: "Main", bundle: nil)
            let LionVC = sp.instantiateViewController(withIdentifier: "Login") as! ViewController
            self.navigationController?.pushViewController(LionVC, animated: true)
        }
       
    }

    @objc func showLogin()
    {
        performSegue(withIdentifier: "Backlogin", sender: self)
    }

}

