//
//  SecondViewController.swift
//  To Do App
//
//  Created by White Hood on 18/04/16.
//  Copyright © 2016 White Hood. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var textTask:UITextField?
    @IBOutlet var textDesc:UITextField?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAddTask_Click(sender:UIButton){
        taskMrg.addTask((textTask!.text)!,desc: (textDesc!.text)!)
        self.view.endEditing(true)
        textTask?.text = ""
        textDesc?.text = ""
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }

}

