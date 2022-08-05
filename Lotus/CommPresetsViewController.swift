//
//  CommPresetsViewController.swift
//  Lotus
//
//  Created by Tanisha Shende on 8/4/22.
//

import UIKit

class CommPresetsViewController: UIViewController {

    @IBOutlet weak var presetsTableView: UITableView!
    
    // Creating an array of pre-written sentences
    var presets = ["I can’t speak verbally right now.", "Thank you for understanding.", "Please ask me ‘yes’ or ‘no’ questions.", "Yes", "No", "I don't know.", "I'll think about it.", "Not right now.", "Stop", "Please", "Thank you.", "You're welcome.", "How are you? How was your day?", "It was nice talking to you.", "Bye!", "Have a great day."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connects this ViewController with the table view
        // TableViewDelegate will notify my class when a user interacts with the table view
        presetsTableView.delegate = self
        // TableViewDataSource will use the data provided in this class
        presetsTableView.dataSource = self
    }

}

extension CommPresetsViewController: UITableViewDelegate, UITableViewDataSource {
    
    // Runs when a cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected one of the presets.")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // 1 section
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presets.count // # of rows = # of elements
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pre-Written Sentences" // Title
    }
    
    // Creates a cell for each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a new cell if needed or reuse an old one
        let cell = presetsTableView.dequeueReusableCell(withIdentifier: "preset", for: indexPath)
        // Set the text from the array
        // The commented-out code below is a possible alternate. Xcode said that textLabel will be deprecated soon.
        // let content = cell.defaultContentConfiguration()
        // cell.contentConfiguration = content
        cell.textLabel?.text = presets[indexPath.row]
        return cell
    }
}
