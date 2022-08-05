//
//  ViewController.swift
//  Lotus
//
//  Created by Tanisha Shende on 8/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var communicationButton: UIButton!
    @IBOutlet weak var comfortButton: UIButton!
    @IBOutlet weak var remindersButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Programmatically setting font and size for each button label because doing it in Storyboard doesn't transfer to Simulator sometimes for some reason
        communicationButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
        
        comfortButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
        
        remindersButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
    }


}

