//
//  communicationViewController.swift
//  Lotus
//
//  Created by Tanisha Shende on 8/4/22.
//

import UIKit

class communicationViewController: UIViewController {

    @IBOutlet weak var commText: UITextView!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var presetsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commText.font = UIFont(name: "Times New Roman", size: 18)
        commText.textColor = UIColor.black
        
        deleteButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
        presetsButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
    }
        
    @IBAction func deleteButtonPressed(_ sender: UIButton) {
        commText.text?.removeAll()
    }
    
    @IBAction func presetsButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToPresets", sender: self)
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
