//
//  ToDoItem.swift
//  ios-clear-style-app
//
//  Created by Daniel Ossorio on 23/06/2015.
//  Copyright (c) 2015 Dan Ossorio. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
   
    var text: String
    
    var completed: Bool
    
    init(text: String){
        self.text = text
        self.completed = false
    }
    
}
