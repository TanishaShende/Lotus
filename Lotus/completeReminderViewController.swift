//
//  completeReminderViewController.swift
//  Lotus
//
//  Created by Tanisha Shende on 8/5/22.
//

import UIKit

class completeReminderViewController: UIViewController {
    
    var previousVC = remindersViewController()
    var selectedReminder : ReminderCD?

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedReminder?.name
    }
    

    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theReminder = selectedReminder {
                context.delete(theReminder)
                navigationController?.popViewController(animated: true)
            }
        }
    }
}
