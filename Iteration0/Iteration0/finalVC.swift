//
//  finalVC.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/5/21.
//

import UIKit

class finalVC: UIViewController {
    
    @IBOutlet weak var nameTextLabel: UILabel!
    
    var name : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextLabel.text = "thank you, \(name), for completing the quiz!"
        
    }
    
    @IBAction func returnHomePage(_ sender: UIButton) {
        performSegue(withIdentifier: "returnHome", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "returnHome" {
            let destinationVC = segue.destination as? askNameVC
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
