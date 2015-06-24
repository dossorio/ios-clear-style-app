//
//  ViewController.swift
//  ios-clear-style-app
//
//  Created by Daniel Ossorio on 22/06/2015.
//  Copyright (c) 2015 Dan Ossorio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    var toDoItems = [ToDoItem]()
    
    override func viewDidLoad() {
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(TableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.separatorStyle = .None
        tableView.rowHeight = 50.0
        
        super.viewDidLoad()
        
        if(toDoItems.count > 0){
            return
        }
        
        toDoItems.append(ToDoItem(text: "Wash clothes"))
        toDoItems.append(ToDoItem(text: "Call Alex"))
        toDoItems.append(ToDoItem(text: "Do the shopping"))
        toDoItems.append(ToDoItem(text: "Do an iOS App"))
        toDoItems.append(ToDoItem(text: "Test the iPad"))
        toDoItems.append(ToDoItem(text: "Configure push notifications"))
        toDoItems.append(ToDoItem(text: "Buy motorcycle"))
        toDoItems.append(ToDoItem(text: "Wash the motorcycle"))
        toDoItems.append(ToDoItem(text: "Change the screen"))
        toDoItems.append(ToDoItem(text: "Upgrade laptop's memory"))
        toDoItems.append(ToDoItem(text: "Charge laptop's battery"))
        toDoItems.append(ToDoItem(text: "Open a book"))
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        let item = toDoItems[indexPath.row]
        
        cell.textLabel?.text = item.text
        cell.textLabel?.backgroundColor = UIColor.clearColor()
        
        return cell
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = colorForIndex(indexPath.row)
    }
    
    func colorForIndex(index: Int) -> UIColor {
        let itemCount = toDoItems.count - 1
        let val = (CGFloat(index) / CGFloat(itemCount)) * 0.6
        return UIColor(red: 1.0, green: val, blue: 0.0, alpha: 1.0)
    }
    
}

