//
//  remindersViewController.swift
//  Lotus
//
//  Created by Tanisha Shende on 8/4/22.
//

import UIKit

class remindersViewController: UIViewController {

    @IBOutlet weak var remindersTableView: UITableView!
    
    var reminders : [ReminderCD] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        remindersTableView.delegate = self
        remindersTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getReminders()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let addVC = segue.destination as? addReminderViewController {
            addVC.previousVC = self;
        }
        
        if let completeVC = segue.destination as? completeReminderViewController {
            if let reminder = sender as? ReminderCD {
                completeVC.selectedReminder = reminder
                completeVC.previousVC = self
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

extension remindersViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func getReminders() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let coreDataReminders = try? context.fetch(ReminderCD.fetchRequest()) as? [ReminderCD] {
                reminders = coreDataReminders
                remindersTableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let reminder = reminders[indexPath.row]
        
        performSegue(withIdentifier: "goToComplete", sender: reminder)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rem", for: indexPath)
        
        let reminder = reminders[indexPath.row]
        
        cell.textLabel?.text = reminder.name
        
        return cell
        
    }
    
}
