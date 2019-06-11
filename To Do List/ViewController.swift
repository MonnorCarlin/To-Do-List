//
//  ViewController.swift
//  To Do List
//
//  Created by Laird Connor Stephen Marlin I, Exquire on 6/11.
//  Copyright © 2019 Laird Connor Stephen Marlin I, Exquire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var editBarButton: UIBarButtonItem!
    @IBOutlet weak var addBarButton: UIBarButtonItem!
    
    var toDoArray = ["Learn Swift", "Build Apps", "Change the World!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    @IBAction func editBarButtonPressed(_ sender: UIBarButtonItem) {
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = toDoArray[indexPath.row]
        return cell
    }
}
