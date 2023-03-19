//
//  StartViewController.swift
//  ProjectRequestFour
//
//  Created by Ana Paula Silva de Sousa on 19/03/23.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func start(_ sender: Any) {
        if let start = self.storyboard?.instantiateViewController(identifier: "table") {
            self.present(start, animated: true)
        }
    }
}
