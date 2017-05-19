//
//  ViewController.swift
//  DoIt
//
//  Created by Logan Trecartin on 5/17/17.
//  Copyright © 2017 WingedDante. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if (task.important){
            cell.textLabel?.text = "❗️" + task.name
        }
        else{
            cell.textLabel?.text = task.name
        }
        
        return cell
    }
    
    func makeTasks() -> [Task]{
        let task1 = Task()
        task1.name = "Cook Dinner"
        task1.important = true
        let task2 = Task()
        task2.name = "Walk Dog"
        task2.important = false
        let task3 = Task()
        task3.name = "Program things"
        task3.important = false
        
        return [task1, task2, task3]
    }
    
    @IBAction func AddItem(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
}

