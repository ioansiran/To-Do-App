//
//  TaskManager.swift
//  To Do App
//
//  Created by White Hood on 18/04/16.
//  Copyright © 2016 White Hood. All rights reserved.
//

import UIKit
var taskMrg : TaskManager = TaskManager();

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    var tasks = [task]()
    func addTask ( name:String, desc:String ) {
        tasks.append(task(name:name,desc: desc));
    }
}
