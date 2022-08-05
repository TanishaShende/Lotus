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

        // Do any additional setup after loading the view.
    }
    

    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theReminder = selectedReminder {
                context.delete(theReminder)
                navigationController?.popViewController(animated: true)
            }
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
