//
//  LoginViewController.swift
//  YOYOS
//
//  Created by Рубен Оганесян on 05.04.2019.
//  Copyright © 2019 park.mail.ru. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func LoginAction(_ sender: UIButton) {
        request("http://127.0.0.1:5000/login", method: .post, parameters: ["foo": "bar"], encoding: JSONEncoding.default).responseJSON { response in
            print(response)
        }
    }
    

}
