//
//  CommPresetsViewController.swift
//  Lotus
//
//  Created by Tanisha Shende on 8/4/22.
//

import UIKit

class CommPresetsViewController: UIViewController {

    @IBOutlet weak var presetsTableView: UITableView!
    
    var presets = ["I can’t speak verbally right now, so I’ll be using this app.", "Thank you for understanding.", "Please ask me ‘yes’ or ‘no’ questions.", "Yes", "No", "I don't know.", "I'll think about it.", "Not right now.", "Stop", "Please", "Thank you.", "You're welcome.", "How are you? How was your day?", "It was nice talking to you.", "Bye!", "Have a great day."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presetsTableView.delegate = self
        presetsTableView.dataSource = self

    }

}

extension CommPresetsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected one of the presets.")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presets.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Make the first row larger to accommodate a custom cell.
        if indexPath.row == 0 {
            return 80
        }
        
        // Use the default size for all other rows.
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pre-Written Sentences"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = presetsTableView.dequeueReusableCell(withIdentifier: "preset", for: indexPath)
        //// let content = cell.defaultContentConfiguration()
        //cell.contentConfiguration = content
        cell.textLabel?.text = presets[indexPath.row]
        return cell
    }
}
