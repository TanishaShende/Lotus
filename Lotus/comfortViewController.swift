//
//  comfortViewController.swift
//  Lotus
//
//  Created by Tanisha Shende on 8/4/22.
//

import UIKit

class comfortViewController: UIViewController {

    // Creating variables for the outlets to modify them in the code
    @IBOutlet weak var words: UILabel!
    
    @IBOutlet weak var invalidButton: UIButton!
    @IBOutlet weak var aloneButton: UIButton!
    @IBOutlet weak var burdenButton: UIButton!
    @IBOutlet weak var hopelessButton: UIButton!
    
    //Creating arrays of phrases specific to certain feelings
    let invalidWords = ["You are allowed to exist on your own terms", "You don't need to be the same as someone else to be just as valid.", "'We all don't have to be the same.' - David Byrne", "You are deserving of love no matter what.", "You do not need to prove anything to anyone.", "You are allowed to grow and change as much as you'd like."]
    
    let aloneWords = ["I understand. I'm here.", "People all have strugles, just in different flavors. Find friends with similar flavors.", "Perhaps you'll find someone some day, and you'll be glad you kept your heart open.", "You can help make others feel less alone.", "I'm sorry. You don't deserve that."]
    
    let burdenWords = ["You are allowed to exist and live.", "You are allowed to grow and change as much as you'd like.", "You don't deserve to feel like that.", "I'm sure at least one person is happy you exist.", "I love you. I'm glad you exist.", "You have inherent worth."]
    
    let hopelessWords = ["You're not alone.", "I know; it's terrifying. I hope you can find some small beauty in this world.", "Check out David Byrne's Reasons to Be Cheerful", "Try to believe that you won't feel like this forever.", "I get it. Whatever you can do is enough.", "I hope you can rest soon."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Programmatically setting font and size for each button label
        invalidButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
        aloneButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
        burdenButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
        hopelessButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
        
    }
    
    // If the text of the button pressed matches the String, add a random phrase from the associated array to the label
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.titleLabel!.text == "I feel invalid." {
            words.text = invalidWords[Int.random(in:0...(invalidWords.count-1))]
        } else if sender.titleLabel!.text == "I feel alone/misunderstood." {
            words.text = aloneWords[Int.random(in:0...(aloneWords.count-1))]
        } else if sender.titleLabel!.text == "I feel like a burden." {
            words.text = burdenWords[Int.random(in:0...(burdenWords.count-1))]
        } else {
            words.text = hopelessWords[Int.random(in:0...(hopelessWords.count-1))]
        }
    }
}
