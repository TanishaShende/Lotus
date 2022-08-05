//
//  communicationViewController.swift
//  Lotus
//
//  Created by Tanisha Shende on 8/4/22.
//

import UIKit

class communicationViewController: UIViewController {

    // Creating variables for the outlets to modify them in the code
    @IBOutlet weak var commText: UITextView!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var presetsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Programmatically setting font and size for each variable
        commText.font = UIFont(name: "Times New Roman", size: 18)
        commText.textColor = UIColor.black
        deleteButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
        presetsButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
    }
    
    // Delete all inputted text from the text view
    @IBAction func deleteButtonPressed(_ sender: UIButton) {
        commText.text?.removeAll()
    }
    
    // Perform the segue that correlates with the given identifier (to Comm Presets View Controller)
    @IBAction func presetsButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToPresets", sender: self)
    }
}
