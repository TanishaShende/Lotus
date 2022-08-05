//
//  addReminderViewController.swift
//  Lotus
//
//  Created by Tanisha Shende on 8/5/22.
//

import UIKit
import CoreData

class addReminderViewController: UIViewController {
    
    var previousVC = remindersViewController()

    @IBOutlet weak var reminderTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: Any) {
        
        // Grab view context to work with Core Data
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            // Create a new ReminderCD object
            let reminder = ReminderCD(entity: ReminderCD.entity(), insertInto: context)
            
            // If the reminderTextField has text, call that text titleText
            if let titleText = reminderTextField.text {
                reminder.name = titleText
            }
            
           try? context.save()
            
            navigationController?.popViewController(animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
