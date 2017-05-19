//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Logan Trecartin on 5/18/17.
//  Copyright © 2017 WingedDante. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var TaskName: UITextField!
    @IBOutlet weak var Important: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func AddTaskTapped(_ sender: Any) {
        
    }

   

}
