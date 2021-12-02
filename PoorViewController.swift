//
//  PoorViewController.swift
//  Financial Luck
//
//  Created by C94280a on 02/12/21.
//

import UIKit

class PoorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handlerButtonTryAgain(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let random = Bool.random()
        let randomViewController: UIViewController
        
        if random {
            randomViewController = storyBoard.instantiateViewController(withIdentifier: "richViewController") as! RichViewController
        } else {
            randomViewController = storyBoard.instantiateViewController(withIdentifier: "poorViewController") as! PoorViewController
        }

        self.present(randomViewController, animated: true, completion: nil)
    }
    
}
