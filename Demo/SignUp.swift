//
//  SignUp.swift
//  Demo
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class user
{
    var fullName: String
    var email: String
    var passWord: String
    var Users =  Dictionary<String, user>()
    var check: Bool?
    init()
    {
        fullName = String()
        email = String()
        passWord = String()
    }
    init(name:String, email:String, pass: String)
    {
        self.fullName = name
        self.email = email
        self.passWord = pass
    }
    func registration(userid: String, c:user)-> Bool
    {
        if ((Users.updateValue(c, forKey: userid)) != nil){
            check = false
        }
        else{
            check = true
        }
        
        print(Users)
        return check!
    }
}
